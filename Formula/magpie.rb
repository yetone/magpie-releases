class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2726/magpie-cli-darwin-arm64"
      sha256 "6b8f4f987d89bc74014cc1d335737639dd2f22d20616b158c64382d796ee8446"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2726/magpie-cli-darwin-amd64"
      sha256 "ffc3a958f3c05dc918459b5b1b99a8bd5324132657320281e0bd30ac4ca8da5e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2726/magpie-cli-linux-arm64"
      sha256 "b41063570ad78dc6987f411a0543ab4c02db5129bf2c1de089d1326a9424764f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2726/magpie-cli-linux-amd64"
      sha256 "08201a78d447a4afc63a2ac9c45f61dca17e993cc12e7e90872bb937840d3d01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
