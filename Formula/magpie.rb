class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4506/magpie-cli-darwin-arm64"
      sha256 "57caacfde5cb7a589f94f5f95b29cf9421789807bf45ecd237e3d00b4b8dcede"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4506/magpie-cli-darwin-amd64"
      sha256 "2abd692c1168cc9227d85095199cc2d36e65d9c9350917cf793545b56fdd963a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4506/magpie-cli-linux-arm64"
      sha256 "79b03202e62067a59a9ee2fd9d9cb2dfd2c03859f6dfd5e9472440f2d9d31e48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4506/magpie-cli-linux-amd64"
      sha256 "0e8cb9adfb4f30d91449cf911f3522380dfc80f3b481da89d301ba3f84a57fff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
