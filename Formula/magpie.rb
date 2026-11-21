class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4645/magpie-cli-darwin-arm64"
      sha256 "28b9cef9ad1ec17936bd36626339bcca3b9c80bf60d588d2e63c1fa64a5f7014"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4645/magpie-cli-darwin-amd64"
      sha256 "9bca9192d8b625f101ea067fa704d7d4c68ccef8bd2055e9a407029ad3beeeca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4645/magpie-cli-linux-arm64"
      sha256 "ecf3e7c526fa4475bfe268a24a73d8773d4094af69331c73343d54e5a3f441ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4645/magpie-cli-linux-amd64"
      sha256 "49f4d52f70d57dc8b7e45276a3ab8d68ef9e35793a9ffeed2c45ab14032087dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
