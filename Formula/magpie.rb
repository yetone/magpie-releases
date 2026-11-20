class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4599/magpie-cli-darwin-arm64"
      sha256 "33981e371ce712cadfc38418c23d34b8e0449a394d5b5fa33bee7aa52d1f24b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4599/magpie-cli-darwin-amd64"
      sha256 "9d7f0c5e84133180a1578cda2ae86fd915f133908c365dfd2cb1266fc728c1e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4599/magpie-cli-linux-arm64"
      sha256 "ffcbd265543565e6d0fbf4138b1c1f1be71f8f2c0709d5f3c4dd87763d0b0fe4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4599/magpie-cli-linux-amd64"
      sha256 "d0d7bbe880d3114dfd68c0acc678c27f54c68a78cfb8d890a263e5a9697b32ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
