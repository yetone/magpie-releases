class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4625/magpie-cli-darwin-arm64"
      sha256 "0e116eaa29f97056644990046a1bc7d422dc439c876677069a60a6e9a81e1b6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4625/magpie-cli-darwin-amd64"
      sha256 "db79cb4c9b753de5867a16508ba97ae29f15374013d797d871b0219dd7d28d8a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4625/magpie-cli-linux-arm64"
      sha256 "cadc0ead4a613da92b1aadfd00dd699851f61867ef259f452460b3b549ea899d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4625/magpie-cli-linux-amd64"
      sha256 "3618f6f722c3c538e95875d127b2dcfcea6883e7452efacf255d73e95740fbb4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
