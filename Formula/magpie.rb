class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4722/magpie-cli-darwin-arm64"
      sha256 "7a1a51da7bc3ecfdc011eafbe3dd7c7eeb6dcad49c006a8a48b1bfc2a150b37e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4722/magpie-cli-darwin-amd64"
      sha256 "727be5fea7aac701460bfa6a888da8eefc7ccd099298a7852400fa60f1b51f83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4722/magpie-cli-linux-arm64"
      sha256 "abde95504d6ad545f5954c7481a8d961e15d46f39450bee94ebdf4ff5c97dd20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4722/magpie-cli-linux-amd64"
      sha256 "8db4aee518bb570aa70f27f5e8e3af9f8f01c0a7809b970a3719f0cd35ac8c31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
