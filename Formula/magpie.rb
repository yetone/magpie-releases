class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2325/magpie-cli-darwin-arm64"
      sha256 "46ae52b5717754ce1a01e2a20e4ea38cc6db006c2e7cdf0e4576722215d2f758"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2325/magpie-cli-darwin-amd64"
      sha256 "d1e15bbcb821cc6e66378cef61ae1dc5ac2eada6d4da7a0bcbd5bb555421b2b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2325/magpie-cli-linux-arm64"
      sha256 "caeb6080f0812ce3a8c3bca402ffabaa2047110da02beb105a453158f0b3e9d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2325/magpie-cli-linux-amd64"
      sha256 "963ab59c5e0460c0cefeadb2ee575a5bf684b5c781ae67f2654b8d2587f93285"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
