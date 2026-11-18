class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4497/magpie-cli-darwin-arm64"
      sha256 "8de15e56af8348356065cbd1664b42d37603a93ae4fe7870fff658aa38d32a9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4497/magpie-cli-darwin-amd64"
      sha256 "4334a57973f4b6ef9578ac8a8d128f415cce1bc9bb7853281f26cd5e25d2e64e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4497/magpie-cli-linux-arm64"
      sha256 "ad292699d448095a0208ec77c77b74078c570e8728c4a4a5de55336b017855a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4497/magpie-cli-linux-amd64"
      sha256 "6937e25efbab7d418b41c0a83355954eb9fc2fa3e81615329604eb78686cc55f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
