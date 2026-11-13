class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3962/magpie-cli-darwin-arm64"
      sha256 "0859f9c7879f99b452e3605d850c2eff4b702e054aae037940f11b3e683ee4d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3962/magpie-cli-darwin-amd64"
      sha256 "98535853651ab37a268e520213f309764746040aecc8fc59370b8bac2e4d1573"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3962/magpie-cli-linux-arm64"
      sha256 "9b50278bbffa43e0e8b6c65f179fb3e44a96fda6310dede76abe787edea9cf0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3962/magpie-cli-linux-amd64"
      sha256 "694a74b0b5010c751186067f3b22f2d2fb2e05cdffb23ec04b3e425965592a50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
