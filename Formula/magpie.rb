class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.137/magpie-cli-darwin-arm64"
      sha256 "966dd9496d251d52cd1bc6473cd68a15bcd206c69241709cd8670b40629fb60f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.137/magpie-cli-darwin-amd64"
      sha256 "1c2a3c6df8cefddd2220e4008395fa0bcf04a64e979b27495b1e72c78230b12b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.137/magpie-cli-linux-arm64"
      sha256 "3f5e7237df9da020b40428f6dcddb442f4735bc90b6d997bd1f36840e7f7a508"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.137/magpie-cli-linux-amd64"
      sha256 "aed239bf4840859bf6816b310fad0a1364741a7bc99eace4ed85c55d55a98159"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
