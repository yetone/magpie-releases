class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1896/magpie-cli-darwin-arm64"
      sha256 "17bdf2fab1565c2cba9aee32a336536de9816e8aa44056275c615fc7108a92c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1896/magpie-cli-darwin-amd64"
      sha256 "d0ec112365dbcf8fc30f97f07357c7c588961a97504a202d9b8620cb5471672d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1896/magpie-cli-linux-arm64"
      sha256 "64ca89fb201cc3d5423b661430f968f1d9be72658d83c552e0cf43ed3e5bc15f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1896/magpie-cli-linux-amd64"
      sha256 "7bd44dc55394862159cf839869b6a952c1c4848880fac26c4235a3345fa24f18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
