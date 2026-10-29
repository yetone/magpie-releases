class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2108/magpie-cli-darwin-arm64"
      sha256 "8be093a76e733c70b95e8e36989e01a6b742c2adeb9d0f398a87ad5796f283e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2108/magpie-cli-darwin-amd64"
      sha256 "b4990e43cdc00d833ca363d4edf18818da682348c76bdf216a7b7fbd6731a786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2108/magpie-cli-linux-arm64"
      sha256 "d4d3fb661e7f33e6ec3e6ec1590c4a8f56f0bf8e3ee8c3dc271684a3478a7a70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2108/magpie-cli-linux-amd64"
      sha256 "2bd446270d4712d260d0563659acb4b3e7eeeb885eb3f7397bfe4d1d2503d5a5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
