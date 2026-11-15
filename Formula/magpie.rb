class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4230/magpie-cli-darwin-arm64"
      sha256 "ae8da4135e5f3bec8e145bef3f7bd4e83fd10fa8ae9865511f7cfa48929237d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4230/magpie-cli-darwin-amd64"
      sha256 "6f0208f6d571fcb7c19da34e0c90577322b332783fc76fb54c5d435fec71fb72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4230/magpie-cli-linux-arm64"
      sha256 "bd77f617d18d8b43d1c96df389b66f68c825c076f06ba0e081d46343fc96be9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4230/magpie-cli-linux-amd64"
      sha256 "100ae979533bdcabec1259d5447255c43510557c94947fd4232b509eb96c6779"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
