class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2852/magpie-cli-darwin-arm64"
      sha256 "4173e4ddc3d4c2346eefaea599612bf68337cd588c1f3756cd759b4fe333fcf4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2852/magpie-cli-darwin-amd64"
      sha256 "d3651f96f8f113a49c73b06c27ef345711f956743284ff845b6c7338f722f2c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2852/magpie-cli-linux-arm64"
      sha256 "328ed425b0a7d2c2fe0b66c3abd41905173a33e408d3e1053760f4239f755695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2852/magpie-cli-linux-amd64"
      sha256 "6cf9bd3352ec157c1b0f95f3eab4de9058dfc695a76dc9b5078dfd67da42eb2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
