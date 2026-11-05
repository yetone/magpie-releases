class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3015/magpie-cli-darwin-arm64"
      sha256 "d997d1180ba3954034058631a6ee21fae9488014561af1c6bd8047553165d521"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3015/magpie-cli-darwin-amd64"
      sha256 "e43b1a579d2abc7111763fbb51a91d4cfabb5cb888062d31172d3a68d4c8ccc4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3015/magpie-cli-linux-arm64"
      sha256 "54d0061a827e183e50f0aa3bcab3205d13051be288601e14544b5885d098783b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3015/magpie-cli-linux-amd64"
      sha256 "8cc40bf9f376c67a3a03dc7bba1175db45d599a13ea4ba27ccbcb65500aa27d5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
