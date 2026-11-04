class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2946/magpie-cli-darwin-arm64"
      sha256 "9fd8ccae85a83eb25fb9f46c1854234ea89ae0131940b29487ca4bdbe83c740e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2946/magpie-cli-darwin-amd64"
      sha256 "8aa7bf4edbfa7f357c1b3108ded7726fb05c3265351187980ad18abe83a40faf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2946/magpie-cli-linux-arm64"
      sha256 "656b8970c40f702d91c2f5277c653eb9954baf2955cecf7fda5ee8284dc3859c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2946/magpie-cli-linux-amd64"
      sha256 "54f188141c0404457832e7a3dee8f58fab499e4f00f3c7218af028f6c1c27999"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
