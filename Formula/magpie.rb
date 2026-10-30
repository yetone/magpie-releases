class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2281/magpie-cli-darwin-arm64"
      sha256 "5923db0ab5711f8981a78974fe9dbb6150013bce4f1182f21e07fd60cbc2f5d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2281/magpie-cli-darwin-amd64"
      sha256 "09495a871158780a64f4330d3230d05fa6c682d938761c1d27e3ff0dfbc7e875"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2281/magpie-cli-linux-arm64"
      sha256 "f3e71007d986561481bdd344773a0b5ceca217c4f2173d03e3423b3d562e4061"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2281/magpie-cli-linux-amd64"
      sha256 "d0ec92fce0729cd6870ec33944a2f7dec27a966944eab1432fe17565981d5566"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
