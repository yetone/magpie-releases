class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4394/magpie-cli-darwin-arm64"
      sha256 "119af8476cf0f6971eeaed369e83e0384c234f21cfc2088d533bf81d2250720d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4394/magpie-cli-darwin-amd64"
      sha256 "217745b0540e5f2183d67c5606b87a5e6f38d046200a3de9d7e6b3aa063104c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4394/magpie-cli-linux-arm64"
      sha256 "79ec3fc3fa512e7887ca62bebce3fd09edb5bc5e1ec07e730d38c0bf6e4cfd24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4394/magpie-cli-linux-amd64"
      sha256 "24c2bc0b783d624fb7ec3c2c52fb646ca3a590d1f0a68a70cc12d7348b256903"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
