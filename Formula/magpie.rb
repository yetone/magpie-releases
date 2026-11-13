class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4001/magpie-cli-darwin-arm64"
      sha256 "46003cb4e672509c90b50ca156601bbb26876b8c30dfe64c06ae7627e6d5c207"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4001/magpie-cli-darwin-amd64"
      sha256 "77e0a00a3a9afc509d7329f75caee274f791c5263f764c5ac3bf9f64e97f91fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4001/magpie-cli-linux-arm64"
      sha256 "7f0a7aa9b3273ce7189bd119e1e6f12be24c113b13fdc070ce12f7cf555c3453"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4001/magpie-cli-linux-amd64"
      sha256 "d105dfbd725dd27d9d05533615e3191b6959959aabaf5f5ecf5d4b45e0ef0463"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
