class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5048/magpie-cli-darwin-arm64"
      sha256 "2cebeebd6fac40c7f7fec54345d5653018a175526672111bed4c854a9c035b5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5048/magpie-cli-darwin-amd64"
      sha256 "a45c1df9058abf14d5d10508be151fc752413f50dc1222c39a3f6cb29321976c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5048/magpie-cli-linux-arm64"
      sha256 "8640a9850247457284cb54627bee323f94a36552b11e359de871a76a099397da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5048/magpie-cli-linux-amd64"
      sha256 "591297ff140b6fca211517000f4aad213f9417df58f9c1073addb0a96ced7067"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
