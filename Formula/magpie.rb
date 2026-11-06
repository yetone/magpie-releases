class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3191/magpie-cli-darwin-arm64"
      sha256 "80a915f3ff478d006337ef0db768477820b1550d5df54995c241c9b7c0744bd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3191/magpie-cli-darwin-amd64"
      sha256 "ce923dcb34f2f7474659d55897cc78582b148ca8dfdb8c0589d63e1872a2d669"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3191/magpie-cli-linux-arm64"
      sha256 "aaeadac5d3a9097ca4522645796239f30ef098363b05f2c47acbc27bf08e2573"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3191/magpie-cli-linux-amd64"
      sha256 "6107f390ae1a70a7e6b99531047db3876aa3fe2b518f79f6be07279edea6df45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
