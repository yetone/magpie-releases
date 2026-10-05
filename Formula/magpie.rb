class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1015/magpie-cli-darwin-arm64"
      sha256 "865f19ef2ffd6cc1b2b2ed52af329669ab03718fc56f3446921df99ed7c50a57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1015/magpie-cli-darwin-amd64"
      sha256 "35bba445bc69691d9b766b8a3184b8b359108f7bf4b471ceb004600e417b9a08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1015/magpie-cli-linux-arm64"
      sha256 "12141575f06035555108d3fb0455e2bda595842ac53830088d85e2de34e7b452"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1015/magpie-cli-linux-amd64"
      sha256 "e0f39c2425d1d86ff771bf8baf6ef13e564171f78a47fb7fd7569114a74b6ba3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
