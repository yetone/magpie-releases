class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1049/magpie-cli-darwin-arm64"
      sha256 "e53f68a8ebdeeba11a5844eea0c79caeb97e017177f4e7861be5565cfb300e91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1049/magpie-cli-darwin-amd64"
      sha256 "1ed35eda7384ed42507dbbb07f3a0a45a2ea00f666bccbee05585067202aad57"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1049/magpie-cli-linux-arm64"
      sha256 "89a061255f4aa5ee5cc501df3a5206456441d2bd28f1483fe1833659b9ff741a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1049/magpie-cli-linux-amd64"
      sha256 "a45ab42d57289c79a162a5d7f41f86acda1ac13e7eb8d723252cfb986f43535b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
