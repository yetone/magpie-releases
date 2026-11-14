class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4102/magpie-cli-darwin-arm64"
      sha256 "24bac78d99505ccfbb1077f4c20042d3d6325724ff77b2f21af0dd3089ed1d71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4102/magpie-cli-darwin-amd64"
      sha256 "2f66370de1eb5dc05b7cf318233925c13ca2dd802246cb5e44e38e7e7a1763c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4102/magpie-cli-linux-arm64"
      sha256 "0e66c4a2804176adddb6bc31303f81bcd562b5cbc77a7c841064d2af6a92ac85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4102/magpie-cli-linux-amd64"
      sha256 "0f5235fc6f459a7b430b0535a136b506645548c96840c98ea2e10062b87233eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
