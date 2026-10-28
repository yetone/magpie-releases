class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1900/magpie-cli-darwin-arm64"
      sha256 "d60241e4defbff5ee27cf9df7ee3b2fdaafa687cb4ae4a455f731b5eae88967e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1900/magpie-cli-darwin-amd64"
      sha256 "6d0124c740bb7140d23040c51cf947e3278da8f0646ed4d197dccb39b1e1380f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1900/magpie-cli-linux-arm64"
      sha256 "c48cf0c0ccb9dfb550f68b7dfe6033eb67d649dbeb9dafe6a66229467f5d9528"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1900/magpie-cli-linux-amd64"
      sha256 "1314e0121f5c4d88bde03a19da05ba93f60e37dfd5480362594f2840d8173933"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
