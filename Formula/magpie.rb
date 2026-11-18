class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4476/magpie-cli-darwin-arm64"
      sha256 "f8ccfcef4f2d6e4bebe07214c3f5cf08c59755a7b5a2aee167c8b2afbeebe7cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4476/magpie-cli-darwin-amd64"
      sha256 "4624e596eb26916e1860282934e733b215983418d604c3fa2ccb6897a8987550"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4476/magpie-cli-linux-arm64"
      sha256 "20a6a5bdfaf89eaf604a597045b568c906475262a48647cda9b606261c50f134"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4476/magpie-cli-linux-amd64"
      sha256 "44c28be3d6f1f3d5d7ebd529715e118ba6d083da01e62e733ae7231103fcc6c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
