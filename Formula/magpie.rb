class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3429/magpie-cli-darwin-arm64"
      sha256 "583c8aa366dc003557574f82eebe27033aa67d76b6e74a236bf1f6d181b46b64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3429/magpie-cli-darwin-amd64"
      sha256 "b0c1cc854a0b05c625e12ea55dd08b85e1a53d3c4c994c26adf8d0ff68c38e35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3429/magpie-cli-linux-arm64"
      sha256 "5e11c13cdb863bb2308bafef0b8be73e7570828010ab97a7d85bc3aabda3a5de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3429/magpie-cli-linux-amd64"
      sha256 "44bec533e93d555cda9fed4152f373e6ded6cd00cfe2a2fb46939040162ebe92"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
