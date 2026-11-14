class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4105/magpie-cli-darwin-arm64"
      sha256 "99e45c666be03d853afc1ab77618e1dd3174e29f0a6f5a9d7500149430a296c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4105/magpie-cli-darwin-amd64"
      sha256 "96d7033d30de0703b3d5eec895e70d0b6ab88fdb1ea82ce872021432da93f4ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4105/magpie-cli-linux-arm64"
      sha256 "6a185dba1ca19d826b61b59d4f529448d5f3cf99574ae4181129d6b068c1b3cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4105/magpie-cli-linux-amd64"
      sha256 "eb37dcd7c8bde19df619dea567f6122ee6362f48b6a33254a48e26fe2f5b754d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
