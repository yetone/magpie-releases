class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3664/magpie-cli-darwin-arm64"
      sha256 "ac0d170f3d3bac4c2e965b238819bc812fda664289ce8a157a00130f069ca794"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3664/magpie-cli-darwin-amd64"
      sha256 "594bed1b41f3103aa87ffa33a0475975e8866a324f8f7834261f407225afa7cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3664/magpie-cli-linux-arm64"
      sha256 "40c5a6b035edcc7a1da0c1be7b2d399323a149542ac0322f7500b17bef4ebf72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3664/magpie-cli-linux-amd64"
      sha256 "a4d75b90238886cc4ec3b2354a33ebd293f4ec02ef6aa2c0fdf4019175a19eb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
