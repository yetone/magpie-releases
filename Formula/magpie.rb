class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4765/magpie-cli-darwin-arm64"
      sha256 "13396a7dc98548251b4897c1c75253a312ee45326bdab8b459a328c9305d6d00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4765/magpie-cli-darwin-amd64"
      sha256 "e9ce099f507a6f009d78c80b29c8816c596916b6e24164a776f17416d539b0b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4765/magpie-cli-linux-arm64"
      sha256 "567c3b15b83f50b783f3fa98011497fc0294d70fd08c7f6707507aeb15f38361"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4765/magpie-cli-linux-amd64"
      sha256 "3815c6327388c8195113b2543dad8b693a240b27420e25fcbd56cedd52ea4ed6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
