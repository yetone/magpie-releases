class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3748/magpie-cli-darwin-arm64"
      sha256 "137d4e39ced94fa4b4433116da3d42c90beeaaaff26b2e250fb4d160d1bc98fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3748/magpie-cli-darwin-amd64"
      sha256 "c250939a90854e338c53fcc0734b8cc14fe54b43fda5bd14ee8a70f76d60cabd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3748/magpie-cli-linux-arm64"
      sha256 "9d1de15bb2a5b112541690116e778761560d5c2ac5ab438c0dbc70a25956e811"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3748/magpie-cli-linux-amd64"
      sha256 "a21778a938b7cf8abf2e0b7b37bccab176728ee6cec3a17e120b5bee995cc757"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
