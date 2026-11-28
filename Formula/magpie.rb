class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5022/magpie-cli-darwin-arm64"
      sha256 "f16366aee58f263dc6fa52114dc4c3fa1b027d385bb42725dcf79805329cb9a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5022/magpie-cli-darwin-amd64"
      sha256 "5ce03fe10bf7aac59eab614a1f8471930da9cdfef740f9eb3e33c730b3fdfcad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5022/magpie-cli-linux-arm64"
      sha256 "981e432ac46fdd2e16d09f71b292af06f9ef5e1150eb760f0c51fdcdf86e95bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5022/magpie-cli-linux-amd64"
      sha256 "c4ce261f111d91c2ae08165a1baf3b9ca27c40cee6aa5cc5cca59e66aa9cb73c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
