class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1112/magpie-cli-darwin-arm64"
      sha256 "ebb804bf9f9a091dfd5e025f548dd336a621e8eab27b879c3c6e44978d23de2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1112/magpie-cli-darwin-amd64"
      sha256 "debf87618fd91168376b4527292c292cf5bacab83796ec5bf56f83e9cd8f5765"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1112/magpie-cli-linux-arm64"
      sha256 "db194f49a7de182552eec1a62de0f7f5a80c8e0c44c887282f8062e9d53a20e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1112/magpie-cli-linux-amd64"
      sha256 "6353570b6be5d4b3a03398736270b294df1050c6a7dbec2d67751f8672e9b323"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
