class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2518/magpie-cli-darwin-arm64"
      sha256 "5b3bbdc1155737ee00fa40957b1891b4bd22d10ae85ab87e9092d116dbd3522d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2518/magpie-cli-darwin-amd64"
      sha256 "5b7061493a5ef5c0e98fc941d6363ca7fbebb34886808d6f866d94eb92ae057b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2518/magpie-cli-linux-arm64"
      sha256 "daa23b076359b0752aba2018e08b0e25fca9233ec6ff1aaffa26ba76ebc97856"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2518/magpie-cli-linux-amd64"
      sha256 "19aa99728b7f148a1ab8f134f6d12f981942c341de6bc77cf13b54855fec34c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
