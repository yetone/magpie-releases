class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3425/magpie-cli-darwin-arm64"
      sha256 "62c7c8308056e0af964f12ee9d78ca457e166300e2eb42b6606799b1d7358f2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3425/magpie-cli-darwin-amd64"
      sha256 "54baa1a203abd3373201da943652cb6d340e649837173976b3b45fff759f85d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3425/magpie-cli-linux-arm64"
      sha256 "539056b9abfab77b662041695d29c13060a063d105789622f4512392055985da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3425/magpie-cli-linux-amd64"
      sha256 "22d9b715ed86306af348142a86811bb119fab44b00dfadee53463b4f91ed825a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
