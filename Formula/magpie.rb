class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4560/magpie-cli-darwin-arm64"
      sha256 "18fae8f9ac1be4638e7fda3e3533f5c341955c7fe538881109293db9295c22c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4560/magpie-cli-darwin-amd64"
      sha256 "bf9b5f1a481697aeea325dae90d57e534c5e92b456da54888cd57aa386bedcd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4560/magpie-cli-linux-arm64"
      sha256 "1ed2c38ce1ae6fabdfea2de95e8a90bcc015fb0f3e2c00df074afe1a2995070b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4560/magpie-cli-linux-amd64"
      sha256 "83e9fe36495f4ea25da2d0581230fbccb465026e92578fd6c4efe58cea9667f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
