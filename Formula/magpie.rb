class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1861/magpie-cli-darwin-arm64"
      sha256 "05e8026390856b478d60153f24ccb5eba1f341a586a019467d24d891cd25f615"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1861/magpie-cli-darwin-amd64"
      sha256 "ffe77d0d4a381c0cdfdc00647c14ee8e3b6c627c18af93ad3312d269c5684ee6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1861/magpie-cli-linux-arm64"
      sha256 "33a7bb96f1056d851067bb19e9a7f82969cfe8f02fc5d5bd110f6fdeaef9ad0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1861/magpie-cli-linux-amd64"
      sha256 "39408a30634731a8e67a8c48da66e1e5f6405f2c7fee75ce55023915401c668f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
