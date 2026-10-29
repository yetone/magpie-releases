class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2110/magpie-cli-darwin-arm64"
      sha256 "4500fdbe1701e6f5efbfd35bb74804cf8bd4d011f97b49f6b09195f9241a5d7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2110/magpie-cli-darwin-amd64"
      sha256 "3ddb83a64256844ad71713c0d95e638dba2b502d6062e139301a5dff6663d722"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2110/magpie-cli-linux-arm64"
      sha256 "afe131a8750dbadc1fa2e24d54b850fdd0504791e241db2ab60ae8e20da488a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2110/magpie-cli-linux-amd64"
      sha256 "ff92d3ad163c8900058ec421a03fc1ae253e37dbc244fefbac1a0100d1750798"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
