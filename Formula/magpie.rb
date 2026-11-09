class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3433/magpie-cli-darwin-arm64"
      sha256 "d1a0b78f3b6621a8006571715694409774312f9ad995d010499388fbb1602787"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3433/magpie-cli-darwin-amd64"
      sha256 "0a3bed3fb0cd764c30d890f0752580b85da992dd6d8edb77144dbf8f0a19d532"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3433/magpie-cli-linux-arm64"
      sha256 "a0f1c8d39e3ce63b315858ffc9722894041ce3da56e5ce492663c6713305ddf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3433/magpie-cli-linux-amd64"
      sha256 "ae2b2edcea1d9aab4d1718014f7f26d0466abe6e1e4ba4b49fbc5c11e39951d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
