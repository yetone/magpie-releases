class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4058/magpie-cli-darwin-arm64"
      sha256 "baa180b984c47fb05467a108d1ef02efc2f92a70df3bc918373ba3889d651fd8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4058/magpie-cli-darwin-amd64"
      sha256 "c83da701cf2e3663db2bf57433ffb8f374402451f85100464e5a3b4807835e14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4058/magpie-cli-linux-arm64"
      sha256 "80512b036721943a9e123981e61d27ce08d77c28d4751cc18b2c355971439dfb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4058/magpie-cli-linux-amd64"
      sha256 "aec48558b2dfd8f1c9d51a8ca3653e29ba86faa6352854c71b80d9cd17f6c229"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
