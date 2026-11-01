class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2554/magpie-cli-darwin-arm64"
      sha256 "f14be9d5ec9d92eccecf26609fa40569136a37e51e7a3d375201bb75323b8d08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2554/magpie-cli-darwin-amd64"
      sha256 "1c4f7e17d802038c80ebbd2c064e13734eefa514bf8dd3e1f4ce7ebb6587c68d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2554/magpie-cli-linux-arm64"
      sha256 "feddd18dfe8640187bf8ad0d0e53969f7c8abe6083799397fcb4a7447045060b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2554/magpie-cli-linux-amd64"
      sha256 "1a61b1b33aa32303d58fd1c0b8531d505eb3009158d1f56e48ce419b8cf5cf07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
