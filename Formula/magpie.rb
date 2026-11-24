class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4734/magpie-cli-darwin-arm64"
      sha256 "900fe99d20fea9a7a5dd4ef1f73da6c020834cfcc09471970817ca998efc877e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4734/magpie-cli-darwin-amd64"
      sha256 "19b2245bbb7df074170c7ec1a06052dd60e9b88c8bf6c094582ae1a812c65c49"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4734/magpie-cli-linux-arm64"
      sha256 "336ddb0a9a5af68d5db04527c883709d2b7ae27cb01f79a4ca21fdb120317882"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4734/magpie-cli-linux-amd64"
      sha256 "5efe243a1302df3e9b95f0463e0c17bef615e3c265cd7ef255a0a63df6ca603d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
