class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3909/magpie-cli-darwin-arm64"
      sha256 "33dc4b92910cd0cce867b1f2ed46927d9043e743cbc06a786efb468e12ecbc16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3909/magpie-cli-darwin-amd64"
      sha256 "99bcc2a118a16e4e461867cc856814d361723d0387da645ca6559e5c71990727"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3909/magpie-cli-linux-arm64"
      sha256 "ba4530a65c82ecb4179e583febd8a12420d0d11f5eca65d7714b9ef32a78fea7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3909/magpie-cli-linux-amd64"
      sha256 "132c22fb08084c0000e1ec26cd74d8a6fdbecd1b59c68b7a5d9bd6e27de899e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
