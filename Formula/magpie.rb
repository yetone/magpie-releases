class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2984/magpie-cli-darwin-arm64"
      sha256 "f106b66fca59af2a16ef807531dc0a83e2bdc452db9e2d90d18f161bf5314c14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2984/magpie-cli-darwin-amd64"
      sha256 "952113530b0597ef9c35bdb16bbaaeed97dd75e704be07b29c96ee268fde7034"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2984/magpie-cli-linux-arm64"
      sha256 "792c8f76946c4d7883fd8e4156b34f87ca0c1ce1aa620a15cb458bc7762aee49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2984/magpie-cli-linux-amd64"
      sha256 "3ff6bb3a226a2bb621fd809262cd8d466de33710bfa74f16c09cbaad3c67c118"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
