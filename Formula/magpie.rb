class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1895/magpie-cli-darwin-arm64"
      sha256 "34270eae4101f5ab00e722714b3d78e0e06e6ebef43234905ee01f449f417ad3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1895/magpie-cli-darwin-amd64"
      sha256 "30fff38b94404831251e60cf6f5e6174b640f44e3892ad39cda9f4a6f9cec514"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1895/magpie-cli-linux-arm64"
      sha256 "244a8ebc4656fb3f3d57544e87c2a1bb780fd8952b0158afa39411353871c58c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1895/magpie-cli-linux-amd64"
      sha256 "4b25ea5ac6e6f4d6eb5b342553ca193a8259926b49f212475d313238b7c6f16b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
