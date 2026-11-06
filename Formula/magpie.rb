class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3154/magpie-cli-darwin-arm64"
      sha256 "37553e75b800f0bc7e4066963d7dacb93be306961fb6cc518544d40736553327"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3154/magpie-cli-darwin-amd64"
      sha256 "8177e2de0c133f96946717df2392a6d3235ab68bef2860c2969bb94fdf2e13a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3154/magpie-cli-linux-arm64"
      sha256 "9ac33c8e3bd512bf262f8d23dc07ca4110ff3f547945db7913369f27b11eaf9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3154/magpie-cli-linux-amd64"
      sha256 "8ba6cb0d315df268d53a501251777b912f05b34329938d34f66bda3d4d089f8e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
