class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.902/magpie-cli-darwin-arm64"
      sha256 "b165ec83c13881397a5049adce8bf76b88b2412731627c9d99b44d8f1060ebb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.902/magpie-cli-darwin-amd64"
      sha256 "1a378a9e6a07f8ee0220d151dcd8e6c4466bed56513dbcd1c369059d3f33d76c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.902/magpie-cli-linux-arm64"
      sha256 "6b34abb80575e65048d1b3846a8a00887ae7b0db8930470fc30509af4ce064c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.902/magpie-cli-linux-amd64"
      sha256 "3e7de499fc674c931453dc5a495a67ff89511f6b3d13c94a358e40d52c03a13d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
