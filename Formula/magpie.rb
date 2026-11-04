class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2922/magpie-cli-darwin-arm64"
      sha256 "4ee15258e3a709967d3a61875ebb87a561b41600a3dbc11bbfe2470d79a1befb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2922/magpie-cli-darwin-amd64"
      sha256 "8266210ac5180481c49de0d696eb7e6caf9370ec1521da84deab6ba72b3a420e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2922/magpie-cli-linux-arm64"
      sha256 "79f15a0074dad9913fd6fcb6d207f8484fbe453c296281accebda2547a748298"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2922/magpie-cli-linux-amd64"
      sha256 "19566a5306ccbcee7f78acfad187684e0626c4e48db0b854c15c6a645b492f77"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
