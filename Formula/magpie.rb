class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3794/magpie-cli-darwin-arm64"
      sha256 "53dc17cc53a81366dfc40cb390b64e9bcd9ed4ca5bd00b39ecbed392feace430"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3794/magpie-cli-darwin-amd64"
      sha256 "9d11b2b6ae09df42e25d39d006b6a49e9260c04ef40cb9faf8c0fe3d096349b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3794/magpie-cli-linux-arm64"
      sha256 "9a04346c4480b0686f6deb6868b4e36293972c67bcc2b8694ca7d7bdeced39bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3794/magpie-cli-linux-amd64"
      sha256 "f2ed588b197104aca5b494c0b2e44794d725f3d738c604abbfa09c3971bfaf93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
