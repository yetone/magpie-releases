class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1945/magpie-cli-darwin-arm64"
      sha256 "fa53cdb0422b16adb8288ff034a5fbb9f072c520d3efbb32585c50f30b15b453"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1945/magpie-cli-darwin-amd64"
      sha256 "b7608b9fdc2f6bc71bd00064b4a1f84629696080056f87c9728112826dc1eb41"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1945/magpie-cli-linux-arm64"
      sha256 "1990874190a4f7a5ba5e75ce01dff28d398fcb6bbb2104b3c7514ebf85a417cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1945/magpie-cli-linux-amd64"
      sha256 "f9ae46c7553a91dd32c6b6d31c9e242da434e8ce6fd18ceaa505a6e062bc73f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
