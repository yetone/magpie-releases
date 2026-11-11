class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3695/magpie-cli-darwin-arm64"
      sha256 "64335804b25c4df8536ff8286cd0747b4d18d272c57361dbf31d026181838324"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3695/magpie-cli-darwin-amd64"
      sha256 "c00f5ff300b175dc8ab967f00b6c59244b00d6f1613291d68ce1bd75f7853b3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3695/magpie-cli-linux-arm64"
      sha256 "ae1e5b2cfe686f422bfb7668ca8521e1f910bc4e0c578ab42a56aed4d99b7bb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3695/magpie-cli-linux-amd64"
      sha256 "ed17ae6b2d56a38a27c690639269c178967563026d0016bceb9074ae2ac901ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
