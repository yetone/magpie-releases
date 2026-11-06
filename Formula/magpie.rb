class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3182/magpie-cli-darwin-arm64"
      sha256 "eecc12ee507b2eab5dcd98ca16c79c47fe7b71a75cbc61236e9b212f0835fc03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3182/magpie-cli-darwin-amd64"
      sha256 "5333b1b20a89cd9fdc6e3df0edf66fc0fd68e104b32bc27fcf7eab72bde2743e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3182/magpie-cli-linux-arm64"
      sha256 "2cd6e4c181a00bce6816a2be60ba1b3854462dca29151ffc8bdb1c2c9aa3174f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3182/magpie-cli-linux-amd64"
      sha256 "5b033e9d41808468469a7bd10cc303f89bfb316c412c693f6722b2943e689f2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
