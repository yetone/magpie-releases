class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4733/magpie-cli-darwin-arm64"
      sha256 "41e0d16cf36dc55c1de5f442879328b2f5f2e8d06d0e6e5133a7cf480392cf5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4733/magpie-cli-darwin-amd64"
      sha256 "46dc5f5bb947e2b3027de5af54f6eaad2c7dea5dfb7b011b841b15b433093c84"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4733/magpie-cli-linux-arm64"
      sha256 "0ddfc440e0131c0c9ce8b4c246795cb6f1ac7e4e8ae6d39f3fd85b910c7f1529"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4733/magpie-cli-linux-amd64"
      sha256 "9b943ff594694b5b3b5301929de83c975810a8f1d56c16b1baf7a76fd2c03c82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
