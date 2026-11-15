class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4242/magpie-cli-darwin-arm64"
      sha256 "953c1b0a5ad8e13a9b27ae54def220df038bcb99dcb3404a0636f6db80a6eae8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4242/magpie-cli-darwin-amd64"
      sha256 "4b3d29916394ed75c267e7941be7bb4a6ac7107d2c0ac87c4c6663db7f9a3304"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4242/magpie-cli-linux-arm64"
      sha256 "a8661b52717e245b12a4fde38aa4e7e08bb171ad757fd97459fa9b3fe183e8e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4242/magpie-cli-linux-amd64"
      sha256 "f2e15c29ed7690d36f3f8feb001403fc33f142ca1e3d4332c3fa6a140048d0de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
