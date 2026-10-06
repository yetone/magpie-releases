class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1093/magpie-cli-darwin-arm64"
      sha256 "589ede234e2ae0f66bd37aa18bf996b58bcbb7a289c91e76017f9be66d67eedd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1093/magpie-cli-darwin-amd64"
      sha256 "a033682742bbe1f1c95e4bcc5333bd12dce8591e28ec8d2388d11bc5a4b66d56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1093/magpie-cli-linux-arm64"
      sha256 "d87409213e8f7052530ef1028dda4923fa2ac53ab80c7a34b4bd19f103a3ef4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1093/magpie-cli-linux-amd64"
      sha256 "ce2c83182979a13a1c2cec48dc1bdf76ffeeb59e501c30adb521eeda691bc85d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
