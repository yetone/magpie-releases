class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4587/magpie-cli-darwin-arm64"
      sha256 "c55deb009abc1eec8f55e688d8721af22e9910fe33a3e672996ac69d6ccfd44d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4587/magpie-cli-darwin-amd64"
      sha256 "f5069db4bcab4bdbe745ce90b620bff6045095394b70d4a1aa0c5ea24977a73b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4587/magpie-cli-linux-arm64"
      sha256 "354ec969e1ac542ab79593fe1902ddb223a0af009b96d7178f086ef3df1b5c82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4587/magpie-cli-linux-amd64"
      sha256 "5a4039f601d9be67a8d11ccf08545b667461360fffcb25c9e4efa790c80d5569"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
