class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3804/magpie-cli-darwin-arm64"
      sha256 "3b960f36572c811b305d0b2453a13afa5ed229d654afdc4deebbce06be419fa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3804/magpie-cli-darwin-amd64"
      sha256 "328cf8a1221f58dbc184c9139eb4dcbc892e2de6a013e11fe08c1281167896dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3804/magpie-cli-linux-arm64"
      sha256 "acd8cda0c3e99796809dc2a43be666d3cfb943c5ea5804c7e37333dc55035545"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3804/magpie-cli-linux-amd64"
      sha256 "f4ac674c009b03c5a9976ed7a3e043a5e6ba778741d0cbaf2d2debfaa8c3af6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
