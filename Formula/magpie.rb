class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2087/magpie-cli-darwin-arm64"
      sha256 "d53890d4966ea38d5abf2d11a307180e07dcca63e4ba1f04460457d8b26daf18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2087/magpie-cli-darwin-amd64"
      sha256 "e2b92c45568393219250c41a6aeff5bf8be7b5c0b58f1d294bb671c94f3af728"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2087/magpie-cli-linux-arm64"
      sha256 "f07357c33f1ccc83f60ed54391acaf57d4edb521d57e521a3cb8e0c4544e033b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2087/magpie-cli-linux-amd64"
      sha256 "6be977d947ce55c6d0b2bc73c42b98ceafdbbb45e4ca4453e64848e9ffe12fe1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
