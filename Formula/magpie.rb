class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.928/magpie-cli-darwin-arm64"
      sha256 "8698f2f36f243f900ce9f293b7730e58e24f7e89c28bb569db3a1ab1d1561c14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.928/magpie-cli-darwin-amd64"
      sha256 "bb173571ded5823fe726d56e27b5914820c75ac9b564fa5be0423bda054212be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.928/magpie-cli-linux-arm64"
      sha256 "1a3075ea18a3095094051a5d1bcfe700d02e431b315e65f8187f6e567293de7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.928/magpie-cli-linux-amd64"
      sha256 "2530ab0cc2c487b6665fa16c502453bf8df51278709a060b4cac37a1bd2e0eed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
