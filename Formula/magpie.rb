class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2505/magpie-cli-darwin-arm64"
      sha256 "9eb31f7de1a8ca1afd77cbe5cb09a828901e5cacd76748b00e14311e00e56e93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2505/magpie-cli-darwin-amd64"
      sha256 "8f0eb689a299250fad8db2c7ddf36366c7c11e38806df2b72ded3ae85c055170"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2505/magpie-cli-linux-arm64"
      sha256 "9a9f9af9bd85ddf4a90fa07cd43df9a15c29e2d599ef740e1e82fe90b31b6fc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2505/magpie-cli-linux-amd64"
      sha256 "01ea8a329ef88a91850cff9c08dfb3d4664f5c6aaa5dfc6c021c6300e8ae3567"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
