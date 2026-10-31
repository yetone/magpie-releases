class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2308/magpie-cli-darwin-arm64"
      sha256 "bf64f092857d2afb6e57a8c6ef4f684c7a0f601ba58f718dc0f9b3106528eea7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2308/magpie-cli-darwin-amd64"
      sha256 "523ba6a2d074e8fb6b0c5a263d9b2d510824dbe54c9e5f22c4188ddb97c2aab0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2308/magpie-cli-linux-arm64"
      sha256 "084135e16a37e53616d95e341fed49e9b0fa8944fff5f9bcd1617cb54947e001"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2308/magpie-cli-linux-amd64"
      sha256 "af306dd890e84bc6c785143b58f5bec42a6352f6df4813d8dea48b3cf6eaadc4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
