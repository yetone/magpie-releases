class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2677/magpie-cli-darwin-arm64"
      sha256 "56d65a74e9578442a91065bdf004617036138bbf8d2500f5ae34806300e90dad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2677/magpie-cli-darwin-amd64"
      sha256 "20207b1964aa6a7034f0ab496e7eeda1ac32a58e32341f59b02346697b9067c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2677/magpie-cli-linux-arm64"
      sha256 "a078a2440bbff0c6cacf1ae0cca0524f7090f835e3e120a27d88e8a91db02ab2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2677/magpie-cli-linux-amd64"
      sha256 "6eec0ad0a6129e82b87eef7343ba2994baffde146ca11dd454b6101a3e470bde"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
