class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2176/magpie-cli-darwin-arm64"
      sha256 "08ffa0ad7923badf535d04f6afbe45600013ec5c274a0c282dc9ab934137c23a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2176/magpie-cli-darwin-amd64"
      sha256 "d5f572bdc041cfac1c6212bdd1abdc4b1b39c9387ea797826f134e3ef29c5e96"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2176/magpie-cli-linux-arm64"
      sha256 "5d4b9508bdc405d39a9fe210f7a5694cafb9ef58ebbf93f094ce38be238fbaf4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2176/magpie-cli-linux-amd64"
      sha256 "a3df44d3954592fb28289a509778c80aa24ee573f205c150f24eefcdee6b2c47"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
