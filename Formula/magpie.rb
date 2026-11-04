class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2953/magpie-cli-darwin-arm64"
      sha256 "bdbb52e21b60e7ff09c27557027b32aab14fadcbe154caf50d044c2f17ecd202"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2953/magpie-cli-darwin-amd64"
      sha256 "e68743c03f1354fd52445408c3c7e27b4c1c59ca57d7fcd780fab1987c3d4197"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2953/magpie-cli-linux-arm64"
      sha256 "dc44702632a2c73d174b1bf9b5331eac05f72ead9e6e28a261104c7c6353f7f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2953/magpie-cli-linux-amd64"
      sha256 "d08daa0619f256641b732a2010ab30845663269d77630668519499625b6da658"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
