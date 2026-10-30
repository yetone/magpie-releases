class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2194/magpie-cli-darwin-arm64"
      sha256 "057b24dea9aa73076af1ca7bbaaf880f74a61fab16d81bcebc2828a59d9c7c47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2194/magpie-cli-darwin-amd64"
      sha256 "f5c81c661e9b598148affcd73aab5183ce3217c2d58da2f10057c14e9ce2c999"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2194/magpie-cli-linux-arm64"
      sha256 "aaa5b412fd4c7806e9bb58916504435aac73237ab8463c845279c7f3519e22e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2194/magpie-cli-linux-amd64"
      sha256 "51501869507b9d85592a0891441af41867dc69d2d3b890dc34288420ca42364e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
