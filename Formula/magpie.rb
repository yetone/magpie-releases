class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3508/magpie-cli-darwin-arm64"
      sha256 "32509a6eb7465e5804e856a8ea323d50f42aa178217741264282489f9fedc3f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3508/magpie-cli-darwin-amd64"
      sha256 "1b9a8f72ed56edc4e0a70f1c00ca10494eeaa2a925ec8462c6129811b4e865f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3508/magpie-cli-linux-arm64"
      sha256 "de0929577e493122b42c662311490551259143f7e8851e4fc54eed33f94ea653"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3508/magpie-cli-linux-amd64"
      sha256 "784fa02e49bfda905b8b5c87aa751bc10602e8bb34b45c1197864801110a2afd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
