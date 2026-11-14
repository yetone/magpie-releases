class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4211/magpie-cli-darwin-arm64"
      sha256 "3e4a0a36cfb69e00114d2611aa1046f5cacd74262b09fdf55e27d152be7d8fa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4211/magpie-cli-darwin-amd64"
      sha256 "d112d53003afe96647ff8518764589cccde4b5a3321017cf4efa6bccbfc5a1cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4211/magpie-cli-linux-arm64"
      sha256 "bae40140a171a0bbb0261f6c73b14fc7f474eb9135006c57f4d3be585e4bd4e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4211/magpie-cli-linux-amd64"
      sha256 "9c515046835c7a348c534d6b68eab9ff481f9ee5de25dcd827bdf9bdab09a78c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
