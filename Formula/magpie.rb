class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1984/magpie-cli-darwin-arm64"
      sha256 "7b5de6d1c142e1064c18a5c518b00e5dfc76265f27622e5785e7c4511aaa377b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1984/magpie-cli-darwin-amd64"
      sha256 "79869b3303a9e989c270bc0c6d07aff212db93329c12077914a706201bda85a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1984/magpie-cli-linux-arm64"
      sha256 "024dd764d43bad48948d2911d72339f599bdea6418de4fe6ef81861390d43826"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1984/magpie-cli-linux-amd64"
      sha256 "7aafa3245b85244383ddfd45f9c78d796251213897d97e97a0bc7a55ad811b45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
