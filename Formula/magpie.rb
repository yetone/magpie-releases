class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1138/magpie-cli-darwin-arm64"
      sha256 "8359d9e29c220545cc98979b3fcc66b0e0c23eefa79f9ea4003fdd456360ba54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1138/magpie-cli-darwin-amd64"
      sha256 "a3e1baeed70e4805fd80b59e4b45d84df14e1f47d2b59d14facf79e7e532e746"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1138/magpie-cli-linux-arm64"
      sha256 "bfa91a73b4cfc5d563eeb41e40442f47dd3c53e33b0b79a8cf5badbe653e63b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1138/magpie-cli-linux-amd64"
      sha256 "1bdc7e0a115b98dd3a4a31b649bc36a3537ab54eed23880c89327895cb6f9169"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
