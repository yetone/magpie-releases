class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4283/magpie-cli-darwin-arm64"
      sha256 "d540f3491541ed48017544ce66e9398ffd11386f48999f2178a9f811c95374fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4283/magpie-cli-darwin-amd64"
      sha256 "7d7b146054946c75d40f0d1bce265d45c6363e9b46ebeaa409a43c865152c6b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4283/magpie-cli-linux-arm64"
      sha256 "f353f52bc0e949ed7738348ab9d7392de090099da25a4671d18c2ba606919f8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4283/magpie-cli-linux-amd64"
      sha256 "a73b7249fdbdf346cee16716386454618cc615d3423169b8bd39501145e2fef0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
