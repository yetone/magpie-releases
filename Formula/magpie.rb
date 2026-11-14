class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4098/magpie-cli-darwin-arm64"
      sha256 "7a45dba61749bf7f782e789d79a3b2d08a4b45649e6a672e2424e4ecb65fe0b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4098/magpie-cli-darwin-amd64"
      sha256 "17fc49698cb4dcecd4fb79b49a5e89f06e8e28d906e2959ada2cece60a4375ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4098/magpie-cli-linux-arm64"
      sha256 "5101c268a008d3124eb4b16cd70d7de76118aa12dfe3d52a6c8427a6c669e3ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4098/magpie-cli-linux-amd64"
      sha256 "42264b74c58d4d374872ff9f1a195d720810d013b82c3578c62272d48aa08a49"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
