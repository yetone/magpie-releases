class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4729/magpie-cli-darwin-arm64"
      sha256 "2336f4eb57291f5bcabe25e9cdb9b261c29db5fa1fad4ffafea6125204c0b5ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4729/magpie-cli-darwin-amd64"
      sha256 "6c3cab483dc1d7b3a83bc3787076a5bc5f0f292711210fcc07ce0f64a18392d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4729/magpie-cli-linux-arm64"
      sha256 "52aa4d3bfceec6edafe34bc2282bf41dbf8d571627a24d76a6de672c5665da29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4729/magpie-cli-linux-amd64"
      sha256 "53a5f2c211c362f042f16ff1795c69a3e317365fad7f297f9fad093deb374b1d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
