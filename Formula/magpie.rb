class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4589/magpie-cli-darwin-arm64"
      sha256 "3b414489ed919d0985767d225b007048a45209c26f294e4a0580357e49b726fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4589/magpie-cli-darwin-amd64"
      sha256 "2adbbcc5fed9485f65c52b14d12f87eff1c2f0949b97e389a2b000520e703d8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4589/magpie-cli-linux-arm64"
      sha256 "6353d59dd407f31bf5e1c309e43540895be292214378d6db30f3c174c45f9ed2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4589/magpie-cli-linux-amd64"
      sha256 "045450f14471aba0c1106f392ffeeffb424eca67ff4064865f1aca74ff2d5106"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
