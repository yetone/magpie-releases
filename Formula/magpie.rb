class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1097/magpie-cli-darwin-arm64"
      sha256 "b49c0628539378ca5d65a69b20b336d24bda9c4b1703c613e8708144188fc889"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1097/magpie-cli-darwin-amd64"
      sha256 "23af4fff9ba73e9133d2d8d0c46a696d2766fb9a209104034ab964518c077612"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1097/magpie-cli-linux-arm64"
      sha256 "58c23d23eefd90fcb8a5bbb8648fe0dc4256cba3844d161439c4539b030c57fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1097/magpie-cli-linux-amd64"
      sha256 "18c35a9a6ba2f6d19eb41b709ef8fd501cfc921e4d2bfe378a483bb5d2fda21b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
