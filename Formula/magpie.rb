class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2658/magpie-cli-darwin-arm64"
      sha256 "4167c7c8013da1d6baa42952502fd05a51108ad6b410e49d39e5f849ca9c96a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2658/magpie-cli-darwin-amd64"
      sha256 "196718ba60c3b3ab59dec2ee217f537583c41200e5e80a0b9ea07345c0285de0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2658/magpie-cli-linux-arm64"
      sha256 "64cb40a286ee1eb24f67aec6fd0d85c90fd3614eeabd64a85ca92382b3b90358"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2658/magpie-cli-linux-amd64"
      sha256 "67b7159cddbde72895faabe34c04e5bbbd9f39a0208b0b42e60bf0f7591da567"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
