class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.152/magpie-cli-darwin-arm64"
      sha256 "44192a84bb4fc4615a46145181da7ba9f9e791754e1123a39e3f2d0449f88da5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.152/magpie-cli-darwin-amd64"
      sha256 "ed966c17139b185058eaa62a9fc922592f95d4fc2021ac3395121f64dbd63389"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.152/magpie-cli-linux-arm64"
      sha256 "7901abdcb13b8c984638853437a6ad4e5df1cd05ab2ed4404af85b71aa742f68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.152/magpie-cli-linux-amd64"
      sha256 "c0699901b125a627b6fae312daef37639b69ac2a44ff60f2789d073259abb146"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
