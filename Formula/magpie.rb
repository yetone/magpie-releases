class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1919/magpie-cli-darwin-arm64"
      sha256 "b35ffad09c41ce70bd5b97a3a9fea7c74ea5ee87814466df2c5235f92f507da3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1919/magpie-cli-darwin-amd64"
      sha256 "26657d9ff057e74a6eec38e86b47b228be6468eb387f9d6bd6b34ee23d4d5fa9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1919/magpie-cli-linux-arm64"
      sha256 "99f1a7696b9671558b58383c0dd3c957c537e0636fcae7e6fbeba96a43534e79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1919/magpie-cli-linux-amd64"
      sha256 "b261f95287b190b8cd41d3f988e898e17bb2a10748d3b924fac894609b23a73e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
