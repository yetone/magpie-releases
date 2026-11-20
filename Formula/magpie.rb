class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4612/magpie-cli-darwin-arm64"
      sha256 "302100dc57999adce6c8b65118a89ef99066e54b52d6a24a757dcce9d6995d89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4612/magpie-cli-darwin-amd64"
      sha256 "3115d35955079680a82eb7f3f88f0bd7cf47ff31d825b7d7ce7110b3dc9280e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4612/magpie-cli-linux-arm64"
      sha256 "48c14e600905c6e60452f0d90227900300f1b8ac68ecc43c2e326d5158207500"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4612/magpie-cli-linux-amd64"
      sha256 "45b4b66fadf1f317474204db04a4ebbc63a7e1129be6e806480e7a5826d496b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
