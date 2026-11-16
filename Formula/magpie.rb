class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4340/magpie-cli-darwin-arm64"
      sha256 "4a3a426c4cfa8ce66de6ea2d7ac10611f3455e8c5bab6f7ebe05be2dc5f92ec5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4340/magpie-cli-darwin-amd64"
      sha256 "bc6786ed790a700992f94acb9f6bc5d992c0643d640d7b67d86a424dcff297bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4340/magpie-cli-linux-arm64"
      sha256 "60e06a81e21b971743e1b7e611fe6905d5d283cd03c95b4276f49d9c617f093d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4340/magpie-cli-linux-amd64"
      sha256 "d6a6cced81daa0dbce6f0b9acf314206e53b3133047227b9047544ef5e90a54f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
