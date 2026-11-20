class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4598/magpie-cli-darwin-arm64"
      sha256 "196dfd42223a5a68019ee3f2f3d3cf3cc48a949a656616b8dacf0c6e25763891"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4598/magpie-cli-darwin-amd64"
      sha256 "73d8b603d2dae6714e95c280a822ff52d3e952e9ce43b8246b0d4ffaadd62340"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4598/magpie-cli-linux-arm64"
      sha256 "380a58b2278536e8b6330e8201f2b3d9b2c4d6a721ecfce1b42790eff24e575c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4598/magpie-cli-linux-amd64"
      sha256 "a455972faa362b4f43c2aa84d5f1336c2886bf16d0b8287a4173bca7ef2caf6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
