class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.127/magpie-cli-darwin-arm64"
      sha256 "7b0965fdcd41ca44b4b52a145484586ef43bf0b025252cb380a618924b2b09cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.127/magpie-cli-darwin-amd64"
      sha256 "6d716eb0ac84a11d4df1fcd605acf8ce4730755d3b8d7b7ed84725f205932c30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.127/magpie-cli-linux-arm64"
      sha256 "3095f0a14483dabcb3c7bd5ae66f047617f2185763ab51cfdbedab1a615df920"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.127/magpie-cli-linux-amd64"
      sha256 "f4e9d4ecb6705a235c1ecf8438bb29153356f42aa669c65aeafc6d0c9cb9aece"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
