class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2706/magpie-cli-darwin-arm64"
      sha256 "84617da8ec8a460dd67ceebd330f84057e867fa3b36945edd8366449a7b6ef1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2706/magpie-cli-darwin-amd64"
      sha256 "271f0cf33b1c04fec55a23800da87c5dab80859c6fd92ff3fec4474fcb6eaa0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2706/magpie-cli-linux-arm64"
      sha256 "d626a09adbd753794815da5e692740212a019d8d04d1cd909fb00dd770cd3e8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2706/magpie-cli-linux-amd64"
      sha256 "4c925b88f9dc66378d13db8d752bb8b01ad7481bc12d51a1e28036cc493917db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
