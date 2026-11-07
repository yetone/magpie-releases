class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3280/magpie-cli-darwin-arm64"
      sha256 "6dee1cc092f5f840ddaf50bd392e701ccdba219a679729c04e6d30d025c1454e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3280/magpie-cli-darwin-amd64"
      sha256 "35e6eae8b064c7f9f9e2ca021a6d876d1fcc96ad35a5324f608d5face43994ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3280/magpie-cli-linux-arm64"
      sha256 "a9414062078639ef510e18c4f983db93387610a5e2791df151c5ca4bec6d8ecc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3280/magpie-cli-linux-amd64"
      sha256 "9612ecb98425137b46ba5983b7f2932e20bd520db4e41b80541630ab401a14cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
