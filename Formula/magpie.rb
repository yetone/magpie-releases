class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4215/magpie-cli-darwin-arm64"
      sha256 "c5f006985633a430ef0db554872f7cc534810c940ab2b8f99ca959b5128a263b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4215/magpie-cli-darwin-amd64"
      sha256 "c78700d51eaef0cb5791f7bc04ff1905e0fcbd3a128a67da3f9b725dfff8fcc3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4215/magpie-cli-linux-arm64"
      sha256 "7c4ca75c2f48bd8e556815ef0dc5448385c1efb86e15df178eaba5015513206e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4215/magpie-cli-linux-amd64"
      sha256 "a936d750d04a3ac19ce087b6201982706606fa22f88a6f25575e38908f4bd4ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
