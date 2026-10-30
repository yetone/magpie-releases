class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2244/magpie-cli-darwin-arm64"
      sha256 "d49a8a1af6fb76c8df961ae3d63e0c58c6c6d772ec93a27f035e8662e12d9e63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2244/magpie-cli-darwin-amd64"
      sha256 "565456bbdb0af1cce2ebf4ac35bb5f7d8d6a1fb8e84b9abbcac89dd511911e89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2244/magpie-cli-linux-arm64"
      sha256 "61d598b35ca00993a052fba64ed5f01c4413ca3dd99ca97f5cb09e3e5798e413"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2244/magpie-cli-linux-amd64"
      sha256 "7471abb905295947de3aa9ebe173eed84761cdb803ddd3e12e498d87d1ed8d65"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
