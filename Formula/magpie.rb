class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2251/magpie-cli-darwin-arm64"
      sha256 "7251f590ce0ac439ab7a8da267c49d6638cffa9c584c92afd563ba0ae3b9326e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2251/magpie-cli-darwin-amd64"
      sha256 "2489b066161d95c942ec9ec0533549f5ef3ed5789b50cd87d9f96fd5a2e5cf45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2251/magpie-cli-linux-arm64"
      sha256 "2d5919b87f1f1ff2a4d26c5a857131806add3e0b4398663795d8651d5b3330d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2251/magpie-cli-linux-amd64"
      sha256 "e0ac8fcc9946ed60b454ccdbeb2480eedd9a54d237463d4aadbd4b6d03b5e3e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
