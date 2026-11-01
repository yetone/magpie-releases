class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2653/magpie-cli-darwin-arm64"
      sha256 "ad881073ab2e17aa5aaa08cf72e655ec44c4bfba6e1516ee0dd8e98dbf716b6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2653/magpie-cli-darwin-amd64"
      sha256 "05573c96cc7cd5d699eade1b5527e7b6231ca47dfda3cbbe9aba15b91a06126e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2653/magpie-cli-linux-arm64"
      sha256 "0578ae77e09c7ed5dd7ad68fd248ca12bf749c8e18b914cfdead6c2bd56a3187"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2653/magpie-cli-linux-amd64"
      sha256 "1a70f8abd07c5e79eae9baa31a975b890839268a7694852b6dd376572832edc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
