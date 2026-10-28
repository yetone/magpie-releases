class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1889/magpie-cli-darwin-arm64"
      sha256 "9371036953c621759d35231bf682af7efbbe5d103aa84909ca4770c8b30345b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1889/magpie-cli-darwin-amd64"
      sha256 "4d29f6e5d669860f56b2bc68d058d961ee5d78549a04ef1ee1777720e400d1a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1889/magpie-cli-linux-arm64"
      sha256 "28852a159ee447024b25083d5e40f327066f626f4d7bded6507ce9d2363e5522"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1889/magpie-cli-linux-amd64"
      sha256 "99af4765bfe2ce849b31d5bf63928b1ffca8da42e2e4c6bcf88a81aef58a7c9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
