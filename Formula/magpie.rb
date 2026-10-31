class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2470/magpie-cli-darwin-arm64"
      sha256 "f6e8009c9b74677568aad23bd1cf86a1f40dae22e15b112cff3024019efb5c8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2470/magpie-cli-darwin-amd64"
      sha256 "0cda4bdd6e7198de9bb6df968e07b6cba610c660ed7a22a80fd296e99f0f2ce1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2470/magpie-cli-linux-arm64"
      sha256 "3e96d19a259c1e50ef29a8844572d5211d555aeb322e37623a6be58aec51093e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2470/magpie-cli-linux-amd64"
      sha256 "6a64c349e5b42ebf7f267e75d39a04133d80b0e89df1ce2200ed4bb05cac366b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
