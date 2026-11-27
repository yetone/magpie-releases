class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4962/magpie-cli-darwin-arm64"
      sha256 "23a6f7c51a911bc350e458951ce14c9fe485787f4afb7f5e9db8ca63ad11d9f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4962/magpie-cli-darwin-amd64"
      sha256 "4b994f6b6ba89c6f17447bbac170955ca756819ab15f9001ed0e1a617ed04668"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4962/magpie-cli-linux-arm64"
      sha256 "6ce832859e2fc7971b3cd0ee6ab5e582fe4f2041d48dbfc6af02a6d345da67b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4962/magpie-cli-linux-amd64"
      sha256 "30ce253b12322c84702e1e3070f38ed3a5b18896142e562d99129d7b0826722b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
