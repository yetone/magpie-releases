class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4269/magpie-cli-darwin-arm64"
      sha256 "3c0974b2469b040301c7f2f94062598340633f3043efaba9648a62bd01cc799e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4269/magpie-cli-darwin-amd64"
      sha256 "3d8497a93beba93f98388653dcb43b7c3a890329f3e6575dc6d5c5850d2a425b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4269/magpie-cli-linux-arm64"
      sha256 "2a9b456b119de1c7d2f554bd7695232f94ee7be3630d6291acc9482f74f57cb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4269/magpie-cli-linux-amd64"
      sha256 "3fceda1f92cde6525e8cf53b496a7df4374e6257a2f6668b45a3b0a9792ab0cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
