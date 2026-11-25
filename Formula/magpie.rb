class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4812/magpie-cli-darwin-arm64"
      sha256 "3ff869f6ea3ab64f53b22604858eb2e9159632f37782facbf8eb7ea905e67104"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4812/magpie-cli-darwin-amd64"
      sha256 "8ddf2d19906945806298effafd5da582f1ba6f6023a7acb00d347ce03f0ed841"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4812/magpie-cli-linux-arm64"
      sha256 "2d7bcb97963829dabd65db49f91a0e5639a2a6f8765dae62bc6955e3d9ccdd5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4812/magpie-cli-linux-amd64"
      sha256 "23b9a059644d2bd6898251cdfd3ea8e24457667cb986c6f964694866c6383078"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
