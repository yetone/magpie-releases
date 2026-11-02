class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2765/magpie-cli-darwin-arm64"
      sha256 "e71109afb2e409f470b1ab2006e01711a1002f03cc66e90ef4ec3ae0f1e2c82a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2765/magpie-cli-darwin-amd64"
      sha256 "a9334b68ec1c3852986b8558fc8787cdf016d45ec2d9d48570c5feb4aeff6c6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2765/magpie-cli-linux-arm64"
      sha256 "c4a40839ff1153bda128f551dec47e84cb36b2210138ea5d076dc89bf69ce878"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2765/magpie-cli-linux-amd64"
      sha256 "316a8ee1566e9882a79479c7de68c7d33d63816f5ed51fa0bd9b55887208352d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
