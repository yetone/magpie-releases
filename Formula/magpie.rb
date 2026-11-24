class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4745/magpie-cli-darwin-arm64"
      sha256 "0c14534ed3e007a4b85b5a564e62f76cd305e2a6f58edac06bd0631cd63bde03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4745/magpie-cli-darwin-amd64"
      sha256 "a6a8390ce6a9b48cff52f45fa3021a59246c8ceeb335fc1a21e3afeb2a37e090"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4745/magpie-cli-linux-arm64"
      sha256 "c673a7f9f9a7d847c804e6b05d74ef3dcb504251a0126b5fb8c4d41d71da72e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4745/magpie-cli-linux-amd64"
      sha256 "55dfe255174fd757e6aff469451609352cdcf64d6be9aa95a5d556f0fdedb4ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
