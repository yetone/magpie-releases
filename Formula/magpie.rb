class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2436/magpie-cli-darwin-arm64"
      sha256 "b28af5d7f51bb3779fcb402562657484777d4849ca2abe010b5e673cf6addad8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2436/magpie-cli-darwin-amd64"
      sha256 "d6a3c1c6492aa9f031da8235261034e40517cb393f6f2f555367f07baf27cfd1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2436/magpie-cli-linux-arm64"
      sha256 "79c9d140f8c8e003209dde3bdb34039ecb74ec28cbb447f4e6efd9917d3974da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2436/magpie-cli-linux-amd64"
      sha256 "b50f39f83237456e495ea8edda266eb954c8c67f7d3456ff41cb6d9715f1093f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
