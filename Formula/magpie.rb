class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5020/magpie-cli-darwin-arm64"
      sha256 "60cdd294528a560f3fcd4cb5c6058ee905f730acd6dc1a92100e98c483a60d53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5020/magpie-cli-darwin-amd64"
      sha256 "d9a5936dd03d754bb10fbdf9810242b90754226fecc4b38bfc51fe5280861187"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5020/magpie-cli-linux-arm64"
      sha256 "77519999a5938483e2adff6572fefa7b67fdad3b520ac68282bf1ee71407013d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5020/magpie-cli-linux-amd64"
      sha256 "0579140708c4af9287c5b97fcce2116ea0eeaeaae899bcfb4ea3f250bb94564c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
