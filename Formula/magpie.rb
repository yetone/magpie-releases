class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2904/magpie-cli-darwin-arm64"
      sha256 "9a2ff32565fbbdee973c9efa21bb8c4cea48c423cf00435205beaa22486b5ad0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2904/magpie-cli-darwin-amd64"
      sha256 "490f852a07223e32228d9e3604826ea5819b4e0cd71c5398261eb9dfd9b0f57f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2904/magpie-cli-linux-arm64"
      sha256 "b8317926fe5f520f18efb86eb094cace13fbaaa9e3d9926c20d6f77ac1e1ef66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2904/magpie-cli-linux-amd64"
      sha256 "45f97e1ac354ecb664f5a4782af338372936fb838c2482243988d9737f6f7a76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
