class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4820/magpie-cli-darwin-arm64"
      sha256 "6f72760b64359e6204cb140b67eee202f4518cea30b562b7531746a852dc2b76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4820/magpie-cli-darwin-amd64"
      sha256 "4d64dc75e9a9d0ab8149d9eab6a6db32e08316c4294f0f8a7f7cebbca69d70f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4820/magpie-cli-linux-arm64"
      sha256 "ed4273082de6ac66ec3c4794a01d0a41712636c4b2537f5d34c25fc5b755d99a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4820/magpie-cli-linux-amd64"
      sha256 "eff23ffa82cc0dca2845de17a8c9ac06f1561aafa03481a4d5cc04beefa8e451"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
