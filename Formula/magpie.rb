class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1031/magpie-cli-darwin-arm64"
      sha256 "2d69d0a39d6673fffe3e64553b6b7cda1e0ef7ffc870d8301753b9d929d26aaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1031/magpie-cli-darwin-amd64"
      sha256 "1d41a16150c41bd87f5ed02d7d438bc0d34bd5fca750534c183d431253b3e10b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1031/magpie-cli-linux-arm64"
      sha256 "705fe59e535cbd8a29c5c866420832729aafcea818476aa8d7abcfa561a73828"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1031/magpie-cli-linux-amd64"
      sha256 "6a737cef6fe1fbf1c6fca7aefdef8a8b470dc6d8f842dd8c340cd1881eac0de4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
