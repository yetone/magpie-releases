class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4091/magpie-cli-darwin-arm64"
      sha256 "c5c74de4d6920b29675a583d573d2c0d27d5b2ee8517877a174590e6d2e5ffd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4091/magpie-cli-darwin-amd64"
      sha256 "01e323a4c929237b1f2a2ee8e3e5f950e1e1c4aad76e4c32e01b58e39c3864fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4091/magpie-cli-linux-arm64"
      sha256 "9676a30884d26e5a8fd68ca2f85a08517004e842c79c6fd841e3b0929d03b3bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4091/magpie-cli-linux-amd64"
      sha256 "7b8f653b21b9c604220d53a6d4ffc7fd16d056a3757aab4adb95a313681222cf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
