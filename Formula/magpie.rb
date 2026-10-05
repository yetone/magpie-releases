class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.976/magpie-cli-darwin-arm64"
      sha256 "afa539d0e07e2a7731f26f9bca58d9f161a24f6f2ad6041fe6f771578f1f1e7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.976/magpie-cli-darwin-amd64"
      sha256 "932e273899fb5b8b141a32927366b4ca34afdc1af67a68afe888b4496cfd0150"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.976/magpie-cli-linux-arm64"
      sha256 "5a1ffc8599d45789a82a41413a7d9e8b70a7d80a6fb66d7eb5c6eb7cb99b85f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.976/magpie-cli-linux-amd64"
      sha256 "6c320e9c6d5e30f5216ff2a5f902aeb40160d4817946103399738225a56613be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
