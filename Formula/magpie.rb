class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3986/magpie-cli-darwin-arm64"
      sha256 "b1e4ad9cc21ce51a60711aab57281ace0965b4a892dd8770991705de4c4ef677"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3986/magpie-cli-darwin-amd64"
      sha256 "5ba34e63d0cc0881dd17954ab65b68149e4aabbf72110713ad9459b13b5b8d40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3986/magpie-cli-linux-arm64"
      sha256 "9b3e71d033a9c03e2d673f8d78426566ea9bcf524bdd28aa7ac6f663d428f3f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3986/magpie-cli-linux-amd64"
      sha256 "b015eab22c1768888ff11356cf1b02251270d7e1a0c5f3a9d833ccb6589f738c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
