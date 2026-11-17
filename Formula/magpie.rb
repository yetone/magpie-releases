class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4373/magpie-cli-darwin-arm64"
      sha256 "76fb5fc9a09a1b26e774246e6eb129b66599950499ed6ba7b6ba8a05b6fa38f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4373/magpie-cli-darwin-amd64"
      sha256 "91ac350552841645177f47f482d2894f0cceb3d4a5925f4732c41d19b1050521"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4373/magpie-cli-linux-arm64"
      sha256 "f50644f0bbcc2dacda0bc6bc095ff9b3c6e087030ed89fb0eae02b8c5daac500"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4373/magpie-cli-linux-amd64"
      sha256 "9c1f14bdaab135c0acdc249391df8abc19c211abb3c51fbad946f69cfb4ecf5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
