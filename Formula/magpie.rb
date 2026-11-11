class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3700/magpie-cli-darwin-arm64"
      sha256 "433bd4b3739e187c0b1708abb275095969639b85521220af59bf93d3d2e910c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3700/magpie-cli-darwin-amd64"
      sha256 "80c9b43da9d4296cc83dd390929863477a0f55784517ed1f83ca9f68175476c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3700/magpie-cli-linux-arm64"
      sha256 "03cfc321635c96222f2758709e8c8eca23764423ed1533ca0c1bffa232e223fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3700/magpie-cli-linux-amd64"
      sha256 "a5bcf6b6ed8d9e31e9aba11e177a904715127b5eebcebb80fda6b649398f36cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
