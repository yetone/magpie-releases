class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3485/magpie-cli-darwin-arm64"
      sha256 "e0a21e5592f735256c40b820888170568d6d63fd68472ddd1269e54c71e6f039"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3485/magpie-cli-darwin-amd64"
      sha256 "dd6ea3a47c17934f8202095a3a9486db35dfbccc26b04f5acb19644c78356173"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3485/magpie-cli-linux-arm64"
      sha256 "3a07a71fb45a7e277cc75fa519cc0d8b80c5544ef492ce152b308149b89722e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3485/magpie-cli-linux-amd64"
      sha256 "e19721c9f6a02a2c0a882163efddb36ae094be431f5f61d0773a13f6c645e303"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
