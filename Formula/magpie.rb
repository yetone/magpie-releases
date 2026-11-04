class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2954/magpie-cli-darwin-arm64"
      sha256 "37ba036621cf04dc1635d8d683641064f85c9928c14e73addf06fb551c99e371"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2954/magpie-cli-darwin-amd64"
      sha256 "b32c021079aad60c6250c7592d8f15e985ac5506321a63a8536c783b9cc2631b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2954/magpie-cli-linux-arm64"
      sha256 "c9bde290d3cf0ba38b4a20fbb183c4170a7348308a96ca6d38b13baabb14bdd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2954/magpie-cli-linux-amd64"
      sha256 "c17dea5defac7c03b81ef9105b663c48050e26a3c1d46b553d7bbdd7c4f3c751"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
