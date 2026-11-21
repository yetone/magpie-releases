class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4653/magpie-cli-darwin-arm64"
      sha256 "29a0c7af47c9182f73b02c94748b446c287ef0a4c6cd785a663e9569e0b8b936"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4653/magpie-cli-darwin-amd64"
      sha256 "cdfa4c3b8f62c33d7e9b64eddd0559dd1f5fb24e7d761ab2e375fc8cf56813c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4653/magpie-cli-linux-arm64"
      sha256 "c29f935d471eeb9abd31d5d3bf76c79964b26825722cf8f130ff81acaafc8a8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4653/magpie-cli-linux-amd64"
      sha256 "664fd300cf17c5f044955cc7e0e896aa4038087e64ac0db6a54db07db59e8b50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
