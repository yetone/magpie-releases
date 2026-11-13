class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4096/magpie-cli-darwin-arm64"
      sha256 "b79a6544944289f43b553325d6697e9ff6a7d3136bf05be441692e1159f82445"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4096/magpie-cli-darwin-amd64"
      sha256 "d726b4a8b003bbb7830d381f604f067faf7b59f084183c729c47b62f7d5d95f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4096/magpie-cli-linux-arm64"
      sha256 "1bec9dea0f4e4f54af07c1e4b79c08b07ee6cd2c9d9ef68213dd1ed4ab4caa63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4096/magpie-cli-linux-amd64"
      sha256 "2f064ecbd5539746c3e04ec28b572e12e79ece2b4c86833f6f39df9e7cf5dff8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
