class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2446/magpie-cli-darwin-arm64"
      sha256 "08a32574b3a1910c78f67f80be37e45a26d2237d7b63c985615801b24c284c2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2446/magpie-cli-darwin-amd64"
      sha256 "f900aa7eeecfc2b714101b886ddcc8a043bf133921116445a230d77f8895b022"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2446/magpie-cli-linux-arm64"
      sha256 "34c54d0d637c698b7c391fd2d2a194f7e2cd549f1ffadeba9b00b14d8510fc03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2446/magpie-cli-linux-amd64"
      sha256 "973e46f675e4b3df63c4925c90191c1e2dc320bf18486cbbeb14d417cde7bc77"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
