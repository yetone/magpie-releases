class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5030/magpie-cli-darwin-arm64"
      sha256 "d2f91ef6f7c8433c60a2a61a94fd751d835df722812354dc9c69f1f4085a3212"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5030/magpie-cli-darwin-amd64"
      sha256 "8b238ccc69a3feb531c204f8d2e43889d1d672c286dcbeba2afb0ac22fbe237f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5030/magpie-cli-linux-arm64"
      sha256 "96a85497e395f0b466b5c49cbe7b55110f47e2e9259232f6a831bfeb083710ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5030/magpie-cli-linux-amd64"
      sha256 "fbec8ee5d951adc6895a98697fdd097e087d7116422bd90b2711745e6da563bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
