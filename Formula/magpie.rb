class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2318/magpie-cli-darwin-arm64"
      sha256 "89577b4e3ae0ee04a2653ec081e259253273a71f6c189856cc11c10e7242ac6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2318/magpie-cli-darwin-amd64"
      sha256 "96a8f02f1401cfc30836080f92cc32272b0c275dd86261df5f2f83a1eb9ae0ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2318/magpie-cli-linux-arm64"
      sha256 "eedfb314633ef6de1d1e7813c8e3a149484f0620a1efda83b63a8faf1314bf46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2318/magpie-cli-linux-amd64"
      sha256 "272bc7fdece444e8766030a4f5c2dff65c0db57ed341970a4e69b16d9bbbbe35"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
