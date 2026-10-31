class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2428/magpie-cli-darwin-arm64"
      sha256 "6524d4e256b02eec470a0b44c85399c78f57ce1aaea5f13576d315d407301e3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2428/magpie-cli-darwin-amd64"
      sha256 "e3113325e958c8d1cdad077cb95e75f1e886103b00b0a06fe389b48c198c44e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2428/magpie-cli-linux-arm64"
      sha256 "a7fd98672fd0ce49874ec3bb811670b5dea5d4724b313e8915c7ed8bd790b351"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2428/magpie-cli-linux-amd64"
      sha256 "95fa0afc443e8edab3eb37b4d083e275bffb3ace08591020a067114515c0edbb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
