class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2887/magpie-cli-darwin-arm64"
      sha256 "327c1ce33111acc10652840541dd27d15911c27348d011c9ffc2b0135bb28f50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2887/magpie-cli-darwin-amd64"
      sha256 "48c91858b0fc0aa825b49d798eb00a4c4d467cc320ebd4db071f6f1437ad4e90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2887/magpie-cli-linux-arm64"
      sha256 "035db640a52c9f19c12716e2ec5a2cbc9a5692ad09f741231b02ca4c1392cb9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2887/magpie-cli-linux-amd64"
      sha256 "b49f57c54f7f9c089ce58ff8801a7e34c0122b81477e5dfc4cb0ea88ac0fca94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
