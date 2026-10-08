class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1123/magpie-cli-darwin-arm64"
      sha256 "d94a6567836aab505defed00a98b37da50c7b2e52f0504df3ce266617282b899"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1123/magpie-cli-darwin-amd64"
      sha256 "4674c92e58f222e4f758047705e6a3f3d490c9fba93d8a24a7cb18a10f819b05"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1123/magpie-cli-linux-arm64"
      sha256 "199097cf0d4f382e4f690905376ed9610846357e6e548011deb984db14f2f08e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1123/magpie-cli-linux-amd64"
      sha256 "ef946d3808dee865529830f6dc2dcb4bf74bcaa032d4bebcb0075d7c634e76e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
