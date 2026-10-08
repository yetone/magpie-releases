class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1122/magpie-cli-darwin-arm64"
      sha256 "21c8037658934877c4bda9eeb27a7a4dc012593ad172d760cfe3b364cafce352"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1122/magpie-cli-darwin-amd64"
      sha256 "b96eb42e30db5a49874a386a3c1a5bdb5398dc802e0d8b6ed33ae998cf7eab8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1122/magpie-cli-linux-arm64"
      sha256 "d9fc24fe099cd9b49e96b2cd4b011b31166f441e84f25998f25c9166a96113fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1122/magpie-cli-linux-amd64"
      sha256 "8337194a62de84a226aedff6aed305714a70bb86571f8df6c03cbef06e9843ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
