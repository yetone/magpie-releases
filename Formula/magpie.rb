class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1086/magpie-cli-darwin-arm64"
      sha256 "54a14df4fbb2811ca87d3ae17722da91d6d216563f005ca1aa15c8dc6b5ef08e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1086/magpie-cli-darwin-amd64"
      sha256 "732f2acb8867e499f3cfcbd10af1b440ad07f73cc97109ad3875e7b97afbbda4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1086/magpie-cli-linux-arm64"
      sha256 "7e4c4dadf099f57c08ee397a850ea323de2fc809b624b04aedb85283adbd3914"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1086/magpie-cli-linux-amd64"
      sha256 "065a2757bab9a439e1f8998554c6399f73141412587f8a18d2b5f57c23b831a5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
