class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3983/magpie-cli-darwin-arm64"
      sha256 "0e4c2ca7a30e3d607e8b0b60896fe2aa4569db4c5829b02972edf1823ded52db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3983/magpie-cli-darwin-amd64"
      sha256 "865ba1c2f7e38c1021472408213f7dc832187ac95d8b23e5477191013144b5cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3983/magpie-cli-linux-arm64"
      sha256 "5e64c4c4b16f493d052adc411cf6cd717b87a1c4c6df1692894d5d86454998fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3983/magpie-cli-linux-amd64"
      sha256 "886e3234b099e350bfc76794cff1a925a7a701ef4998a945e89c2bed808e9d76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
