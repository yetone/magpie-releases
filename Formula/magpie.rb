class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3042/magpie-cli-darwin-arm64"
      sha256 "d0dac2a2537240a81164f32ee5d9753e11c64a558f59ff67e507f2e34c1e00a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3042/magpie-cli-darwin-amd64"
      sha256 "1538f4d4955866d96d539dc4d9a23821fe8456f070dcaa205c2976fccc85d3f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3042/magpie-cli-linux-arm64"
      sha256 "6826b5f3c066c278fe828048d2e0194ef49b424bbf7cbdc63ae27d14da689a25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3042/magpie-cli-linux-amd64"
      sha256 "165e665470a66503109ed13ea6a27b0a4d1b5f04ebba83f136b8f3ffef39457f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
