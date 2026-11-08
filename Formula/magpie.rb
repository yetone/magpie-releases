class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3312/magpie-cli-darwin-arm64"
      sha256 "2c5f1a70852604e3f2ea1fdfc596bfbb7fad102806c28017868648003718bee2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3312/magpie-cli-darwin-amd64"
      sha256 "ef1950368f990e3c1f6fd51a50c8137bc7d693533fc8ec1cf24f4ba9b660bb64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3312/magpie-cli-linux-arm64"
      sha256 "6134c7330133171d22d9a9bd3fcc830230a5d00a7293ad69bda115424a19464c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3312/magpie-cli-linux-amd64"
      sha256 "5fcb8a3ebf341026662e297f4dfa712275f666f35cf2b8ef59d214e851a90cc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
