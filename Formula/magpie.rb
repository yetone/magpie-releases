class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3960/magpie-cli-darwin-arm64"
      sha256 "711069d7960b843a438baef6cdf3809f388a6ed9ef4064295221fef8a7815a82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3960/magpie-cli-darwin-amd64"
      sha256 "afbee63d343b8eff7ef43056a9b4031d975f7327623ed527df89ee8ad2f50f7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3960/magpie-cli-linux-arm64"
      sha256 "026ff527ab57a6259f4c393021c81ea0b09a25ab0d35fbecc331be16e629fcd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3960/magpie-cli-linux-amd64"
      sha256 "6746a6323d1f6f4ed18dc844c782e3f97126ed661248c9ac025941c0439c6f4f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
