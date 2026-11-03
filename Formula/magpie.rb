class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2781/magpie-cli-darwin-arm64"
      sha256 "279511e69a57310b2536221e85da270c5c61d1e1ae7617ad9b1febbe69daee68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2781/magpie-cli-darwin-amd64"
      sha256 "c96582599c64162b83885ab452f16883958597f81468dc1d8be0f525da55a900"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2781/magpie-cli-linux-arm64"
      sha256 "c3b5e848697c5e87c5201003e67ecf3cbe25e2d90442d3776b24721e3223746c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2781/magpie-cli-linux-amd64"
      sha256 "d83332107e5f20b126f719704aa8fc9864f47509119eb57ac92d834454e454e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
