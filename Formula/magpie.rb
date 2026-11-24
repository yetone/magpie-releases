class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4735/magpie-cli-darwin-arm64"
      sha256 "b923d160c0226c4a966e8c725ac0049624e4e56d5e318ad4b7880c5e9099639a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4735/magpie-cli-darwin-amd64"
      sha256 "fbc5197a2e9a124df618bf3e41cd490f4cf5ef468e89fff2e202fa1a67cbdebb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4735/magpie-cli-linux-arm64"
      sha256 "9af927efaf0c7827d247fa64627afa20d84916a33c9f37e1e7558af4560ad22d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4735/magpie-cli-linux-amd64"
      sha256 "79c2099d0213fc47f14957b3bc8f91946b3038aabacd4b777918d0742c8345db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
