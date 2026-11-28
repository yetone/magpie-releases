class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5052/magpie-cli-darwin-arm64"
      sha256 "4f4a4fa4da94442964439de4b4479ed634088a2e87520d10ec6357685f6f243d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5052/magpie-cli-darwin-amd64"
      sha256 "c071e05fbc0db036b94ca5bcf65f1c8ee944a01f5298d255a5d3e7e9953e4b27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5052/magpie-cli-linux-arm64"
      sha256 "46a72716716ccff6b58dc67b893ef2917d14ac534b7a08f1cb97b1da66e4c4ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5052/magpie-cli-linux-amd64"
      sha256 "3cef5e3bce646998d29ecf6470b49bf3f7413f5621584faddf5375792c7e24f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
