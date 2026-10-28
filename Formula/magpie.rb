class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1868/magpie-cli-darwin-arm64"
      sha256 "da83810f22e01ec62de4a4e63f7042bbf7e19011b1c5b89fac41d6b3125ac2de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1868/magpie-cli-darwin-amd64"
      sha256 "dec935673cc163b6308071811b379c4c5d2b570bb2f13e770860f65fab1c2935"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1868/magpie-cli-linux-arm64"
      sha256 "b230fc888298bb83ecf5ecf7bec6213169c48261fa6e3900f11f8b7e9d1587b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1868/magpie-cli-linux-amd64"
      sha256 "8836518bbe796266fc95ea53ebf02161d87dfb31da6962a2480eeb0dd050b2f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
