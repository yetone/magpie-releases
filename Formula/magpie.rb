class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4875/magpie-cli-darwin-arm64"
      sha256 "54ded6f1e00865962745fef2869f96a0797c50333d16350b350f46537a6806ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4875/magpie-cli-darwin-amd64"
      sha256 "a4f523df021f81b356daba1a9b7ebd77c3feebe3d82fff35120469304ff24ddc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4875/magpie-cli-linux-arm64"
      sha256 "ab8be82d9749cb14e2d9537df5b2ceba7b11ddbddf6c497218c83722a0ba7018"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4875/magpie-cli-linux-amd64"
      sha256 "f94cae21ce259ea38419939a1f1ca892a91d55c279942a2cde89bfeb9ca841a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
