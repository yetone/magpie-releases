class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2815/magpie-cli-darwin-arm64"
      sha256 "402c37ffae33df261156a9cae329eb14d1c46b298d4df292ab8f4b9faadf1b9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2815/magpie-cli-darwin-amd64"
      sha256 "728be7c39ac37f46dcb6923d1f477d7546d3d0a9a4a3cf96240775452ed125f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2815/magpie-cli-linux-arm64"
      sha256 "9539caf9ebaac4437f4106f197442f7e1503b1f920c5a105c0f68288871a5edf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2815/magpie-cli-linux-amd64"
      sha256 "2e6bfce2b9b6fecf58e6f177428487d9e631f00648114ea0061bff26e4742fb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
