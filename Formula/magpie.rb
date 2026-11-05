class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3013/magpie-cli-darwin-arm64"
      sha256 "7932f4019e5b16179c5a4f54fb78bdcc51ecea44e78daffa18b81e2861a2e40c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3013/magpie-cli-darwin-amd64"
      sha256 "c45e33918640dddc683ca26cdde9653625f5169bfb8e8afdcebee7673f5f36fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3013/magpie-cli-linux-arm64"
      sha256 "803871ead24223bed7460c5176d47250154989fd71998eb03d8cfacecab5a00a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3013/magpie-cli-linux-amd64"
      sha256 "e695138c30a13f422114abb7b9c3a04b6bd3984ef49823a9575107898cdd8124"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
