class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2597/magpie-cli-darwin-arm64"
      sha256 "f65c57d4ed1475f38f5f93a41ca67830516ce8e3779f2a7ebf504d656929c4b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2597/magpie-cli-darwin-amd64"
      sha256 "f5d32e859112b46ea7d07577bfdf7e48905ccdae4cff75c8173f9f906bc97750"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2597/magpie-cli-linux-arm64"
      sha256 "321f71e2242d28b85521fec107f1276653cf1391dbf8ceeb8a48039107895401"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2597/magpie-cli-linux-amd64"
      sha256 "d6c08b3ad1cbb42b867adf72ea1403a5dd13fd5bc77cf2ea507b07035014cec7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
