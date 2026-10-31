class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2314/magpie-cli-darwin-arm64"
      sha256 "6bf754dd712db7eb9ea2f40c2ec64acf57043796db29ad07826d9dcb5bf9fa63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2314/magpie-cli-darwin-amd64"
      sha256 "5d77619d687b962c154b9e572494bae648d0387e6dcfb4b7f8a5a111029633e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2314/magpie-cli-linux-arm64"
      sha256 "562208bda7e0012361c7fc2931a7f1669631b4d30762d224e837a79fcb18b01f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2314/magpie-cli-linux-amd64"
      sha256 "3bf46e5a212965e3d03537e1bec23e1fae9176af7ee45b11c95632ca14abb078"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
