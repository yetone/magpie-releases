class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1017/magpie-cli-darwin-arm64"
      sha256 "8d66341c3d906420919da3f232e25253c90100b04af0ca455e85ed9773357c91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1017/magpie-cli-darwin-amd64"
      sha256 "c86d27cd50e3fc3a6f42c78bfcb579d4449d746588b77f126a9fff600b65af55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1017/magpie-cli-linux-arm64"
      sha256 "389164a4b3754cd0ad041ffe1964912b0b5bff940b61164be413668c8816fd1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1017/magpie-cli-linux-amd64"
      sha256 "3afec06a5cf6c31ea2654849d17f5061fb9a44997c1af06dfc6644fb90cde69c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
