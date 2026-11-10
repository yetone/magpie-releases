class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3634/magpie-cli-darwin-arm64"
      sha256 "c86076d33ed2c93ec6adb5652424ee24ba6115f789bd48897b6d51968841fe54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3634/magpie-cli-darwin-amd64"
      sha256 "75c3f055bf955190b9b90f351fbc73c33b3acfd3c730b0f8dea96aa3dd5042c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3634/magpie-cli-linux-arm64"
      sha256 "5a62c8fab951de87046e78d33352ec4a0a52b1913d798304ada6de4b14d9e6e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3634/magpie-cli-linux-amd64"
      sha256 "0b16b7190fa54b3bf3f3ead26b2636708821358f7e8e03cd52d0077d1cd4f04b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
