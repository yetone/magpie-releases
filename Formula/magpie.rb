class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4961/magpie-cli-darwin-arm64"
      sha256 "ce8c57ff6df24c6e08920332143eddc3d60090ea93a1a56509ed844ec30c0e9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4961/magpie-cli-darwin-amd64"
      sha256 "9b8b957903563ae4ce18949563ae6d2311883dbee46c60dc5f4d66011a1e8273"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4961/magpie-cli-linux-arm64"
      sha256 "1cff3d87c24b71848b6015027bf420520f5afe099ae62316887d0f2416bb211a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4961/magpie-cli-linux-amd64"
      sha256 "6e91f211351b5a564767a6916165eec5897d65f16891f4777504e354d11389e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
