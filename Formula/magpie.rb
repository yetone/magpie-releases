class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1980/magpie-cli-darwin-arm64"
      sha256 "de5e1080572e6e4ae1da503c3c611b67d553b99f8486f2b1521eb2d5b886e9df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1980/magpie-cli-darwin-amd64"
      sha256 "2cd623823e7b6bfcf74f30e9b75ba7c03640e2876e826300da378c011dff3e18"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1980/magpie-cli-linux-arm64"
      sha256 "d2ca834e7c6079b5cb9e63329f6294553ed92b15b4cebe98093ef64ae7d885a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1980/magpie-cli-linux-amd64"
      sha256 "a25015886cdfe0be9abdbd6069009662c53a419df46a432c0f19ac90291b30cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
