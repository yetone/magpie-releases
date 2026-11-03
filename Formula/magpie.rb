class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2866/magpie-cli-darwin-arm64"
      sha256 "c2f45422710ac2023385c19b23212551d9b1ee446807883f0848a20860b8b093"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2866/magpie-cli-darwin-amd64"
      sha256 "edaf88fb9a3cb165cca7cffce5b53c5aa19a7d3384e2221c9a33fe4fb04f6a68"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2866/magpie-cli-linux-arm64"
      sha256 "5f84c401dbb3e5b2e6d63fcb755a6beaff2e64dd3cb975134784cf14ce0846d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2866/magpie-cli-linux-amd64"
      sha256 "eccb5396face1e2c9e938e20331461600339005b16d2405eff6162f8e36375cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
