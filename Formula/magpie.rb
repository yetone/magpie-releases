class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2012/magpie-cli-darwin-arm64"
      sha256 "8f1ffea9be2962f046f9e8d157213fba16d064f4eb429bd0efee8b8ad7bbd721"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2012/magpie-cli-darwin-amd64"
      sha256 "a5beabaf3af4bce2df9cd401abaa72e810b4ce90bb14bde3c63d3f8e4627d2d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2012/magpie-cli-linux-arm64"
      sha256 "5db39449602635d29fe5d51d7fb29fe4f580184eddbc3fb9cab30860dccadb68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2012/magpie-cli-linux-amd64"
      sha256 "98b463910dc036ccac62f68e542081620472d570e99b17b17bd622396f8c20d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
