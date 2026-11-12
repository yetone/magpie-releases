class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3932/magpie-cli-darwin-arm64"
      sha256 "cc28f2c4fa93a61f907afeddc9a10888410afc991aa24a452b15cfaf82e4e3b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3932/magpie-cli-darwin-amd64"
      sha256 "0c871d8462c5ef8feeb70ff9c12a311228cd944ea252760b5977192805c76bd6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3932/magpie-cli-linux-arm64"
      sha256 "df8ca5c3ccdc06e3ca4c34602cb6430e1ef971cc617750d4d592d9b012d9f392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3932/magpie-cli-linux-amd64"
      sha256 "126272fe6656a3a681921e8d57c32fb734c9b607c562738c704146b1f6400271"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
