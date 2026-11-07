class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3215/magpie-cli-darwin-arm64"
      sha256 "edfdae3005427875fe6302946b35224a835f311d5cc3bd260f6e13b2dd301701"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3215/magpie-cli-darwin-amd64"
      sha256 "e01e6840c51f8f0455cd0498b19ef68ef8a3e681ce8ba855b57de580da691fa3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3215/magpie-cli-linux-arm64"
      sha256 "0f3f065d01c95d07232de8252e27fe8d7ef0b968087fb2be65340f3582276db8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3215/magpie-cli-linux-amd64"
      sha256 "4e62563b7b46806943ca4163590a829823cc5a60926fa2fbdfc68e1a5f8759ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
