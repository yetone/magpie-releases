class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4276/magpie-cli-darwin-arm64"
      sha256 "1031dd8ee4d0ac97e794f870f3568af60deb169fa91348a619fa0dc7631f1799"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4276/magpie-cli-darwin-amd64"
      sha256 "2908a3dc24d625a6149232b47def5a09895f8d769f004a94979eba9b76a4ac77"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4276/magpie-cli-linux-arm64"
      sha256 "0e35d16ca8b5455b7d6ba0a977fd529c437a6e654b0c36b62ba2242e8912d206"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4276/magpie-cli-linux-amd64"
      sha256 "4c6f60f92c4e6d063502b1dfde6ccbc5674d6435513a88c66ea65215f0f3cf55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
