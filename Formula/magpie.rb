class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1134/magpie-cli-darwin-arm64"
      sha256 "28fee618c76c3f1f1d20cc2e94a19e793c7f2648935663fe208aeb71f8ca7f66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1134/magpie-cli-darwin-amd64"
      sha256 "694ea7b96b2b8e759127095e1aae98288dfca0bb8c88b4553d55bf9469b6c4a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1134/magpie-cli-linux-arm64"
      sha256 "bed112ee7d774f1e370cd27da008e6e873558fce5c835aeb51cdced630a90685"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1134/magpie-cli-linux-amd64"
      sha256 "fa98f33ce9d69e041c9d05112257ba5aadc56764904bf54c28d6f75c5116445e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
