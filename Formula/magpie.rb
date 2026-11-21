class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4626/magpie-cli-darwin-arm64"
      sha256 "2b7c0b968d7d2141073ede340361900b920a6cd0aa222472499fd8d0588345d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4626/magpie-cli-darwin-amd64"
      sha256 "3b8e4ea5a970a55992032c36232cfcd149506f1d73a61c3b4246fbf37128e1bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4626/magpie-cli-linux-arm64"
      sha256 "5436ad334ae2fe8839dfa91d80e0e0177bf37669276b352b58e76f8c14c44b25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4626/magpie-cli-linux-amd64"
      sha256 "af03e719edc4fccc3125f8488dc5d41c40769bf89ae19a7e22d1cd8e8653b283"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
