class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2822/magpie-cli-darwin-arm64"
      sha256 "798766fdf8fd5333847e1c2a2d69644444ce4d15f21f51d3e9d785c8f6271d76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2822/magpie-cli-darwin-amd64"
      sha256 "67641449580903aee69f46777af48a799892958b3d638b80c199aa457631d07d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2822/magpie-cli-linux-arm64"
      sha256 "f5d4cb18227b7c1cf0c8bb69da825a744ed761283b78cbd0c12c6aa6c7504186"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2822/magpie-cli-linux-amd64"
      sha256 "daa6a1d5b3bd54925bfc2458f3ed67ab8c75aa40746710eb6eaa5c35c4c2c020"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
