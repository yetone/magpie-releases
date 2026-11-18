class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4489/magpie-cli-darwin-arm64"
      sha256 "9b077d00a071dbb0a2410c548580692c8bb80571492a64065839bc60a4f43b37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4489/magpie-cli-darwin-amd64"
      sha256 "78d816d1f606b7940a12b6cb8fce64c1520fd49e4d088c09ba067e18b628ea01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4489/magpie-cli-linux-arm64"
      sha256 "e5495e11e44dd6f8812daafadd11373dca43e3b18dda24f97fc6173d8e588a70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4489/magpie-cli-linux-amd64"
      sha256 "76b48f72f5a668299d9d90f50900dfc1a9729ce5cd2c2098e44814d388c46a45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
