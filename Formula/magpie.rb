class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2858/magpie-cli-darwin-arm64"
      sha256 "24794ece2331a566031617b0b4f6b7918ae53041021307eb8ac0fbfa16ef9a00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2858/magpie-cli-darwin-amd64"
      sha256 "a814e07bb7bffd73b3d349f9d4945459399e4ea9e69fbf3e17ef0564a2c41017"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2858/magpie-cli-linux-arm64"
      sha256 "5540cff1cfe3a75abc982367e041ecc015dd5fcf5d96c431b43cb13a11767e33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2858/magpie-cli-linux-amd64"
      sha256 "129423428ccab75fb87f5bf60d68375c9bf04932206e046120010407d9e448fb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
