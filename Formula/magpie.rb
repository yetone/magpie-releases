class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1066/magpie-cli-darwin-arm64"
      sha256 "31048dcee8afd1dfba86d166c604f1718ced5d6c1ec0ad8b9c824431b74ac902"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1066/magpie-cli-darwin-amd64"
      sha256 "aaac4790e7f254a735a5f87eeda2063b2a45381743ac60b9bad9f1f5ede04823"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1066/magpie-cli-linux-arm64"
      sha256 "b6b84493f64582d97ff3d6cfd24f6c4147683f234cc94450b76168ab612f2977"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1066/magpie-cli-linux-amd64"
      sha256 "3fb68806965b50c8a6822cc2f5462b48ea7f626c5dbf83ccd58021e94660ccdb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
