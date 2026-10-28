class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1907/magpie-cli-darwin-arm64"
      sha256 "3d2b04f78627ed8f127f2c27f13f67b3c3ffba20290c1bb8d308c195e8c569b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1907/magpie-cli-darwin-amd64"
      sha256 "bd2b426453272cba59fcf885b3830d3004ce52b4ffeace1ee21bc6fa90be2e87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1907/magpie-cli-linux-arm64"
      sha256 "7680628e3b9262683d3613052039284644277d14dd281e9ec30ffeeae32e3611"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1907/magpie-cli-linux-amd64"
      sha256 "e73ac7c894d0d426a83f9c7cf4cc58d7c13763d298dbbe29d40a319ca00cd6d8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
