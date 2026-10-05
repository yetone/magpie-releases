class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1003/magpie-cli-darwin-arm64"
      sha256 "bd84e95f84052193f9d7fb5640b883c5d85d152d82ed8ccd8b0b82e8b991fa26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1003/magpie-cli-darwin-amd64"
      sha256 "db7d81e98f637265e43b862f428f563cb4901f62d7dbc924ca6cbb587ad11da2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1003/magpie-cli-linux-arm64"
      sha256 "f72a0e53668f912a2dc92ffddffb2000b2248769585497ad16cac91622827856"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1003/magpie-cli-linux-amd64"
      sha256 "958efcf93e08f85777605248e69dc40a541670d00af931ceffd3f963a24c7832"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
