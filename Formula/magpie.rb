class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1869/magpie-cli-darwin-arm64"
      sha256 "3569f00ffac568b6556bd7069051f9e60ff57528bb29c2178c0c36d8f6f8e36a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1869/magpie-cli-darwin-amd64"
      sha256 "181d715078977ecb1771d33bef0e90d59c4298acf93a96d61581b6e6f8b62de5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1869/magpie-cli-linux-arm64"
      sha256 "f1a2f1f3cb61839102d51238b667a6dc2cf4513cc0e9c05261299759aa6afdf5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1869/magpie-cli-linux-amd64"
      sha256 "aef39fd4925e0f6625e294c8deed9f79781e90960e518760490fec44e0fdfe1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
