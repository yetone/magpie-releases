class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3676/magpie-cli-darwin-arm64"
      sha256 "f7382581a4669dd9ba285ca79114023bde91414924d1d903679923330fe1ea2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3676/magpie-cli-darwin-amd64"
      sha256 "0fcbdd1e581c06662095c84adcbca1a06035a48ac5a343aaec8f3171d3b561de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3676/magpie-cli-linux-arm64"
      sha256 "ede79513ee475f9174e2aceaf01d0e80d8eb14c84e39b879a64edc25b1b79216"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3676/magpie-cli-linux-amd64"
      sha256 "3dbbfe2cc2fb62e034a8f673d40feb124380e8928ef907cfc624c0c83e288693"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
