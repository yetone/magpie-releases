class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3133/magpie-cli-darwin-arm64"
      sha256 "e491143e567ca0f785e7ed2913509170cb299f9f93218cc8db25860c098455a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3133/magpie-cli-darwin-amd64"
      sha256 "e17bc478127f07f02496e5b2cb03088683c40dd2866a02134088aabf92328d38"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3133/magpie-cli-linux-arm64"
      sha256 "6ff92d9454d42ea2ddfb6709b37e0e5ef7bcda1e091a54bc7b42f1bc28d21bb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3133/magpie-cli-linux-amd64"
      sha256 "838070295e0c83efa6b450ce454996eda9ab4a3583480044344ebc425f4f5867"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
