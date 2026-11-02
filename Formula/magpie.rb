class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2742/magpie-cli-darwin-arm64"
      sha256 "ea428957ddd0cf1e6c5a2eab9efeb115a38f06ecf506d2a96721440bcbc3a797"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2742/magpie-cli-darwin-amd64"
      sha256 "030456dc70cbbe78c643d53fd1540ae76885a7366c2e3b364ee3b65176ac79c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2742/magpie-cli-linux-arm64"
      sha256 "588a7f2b66c5e456996fca00bb14b2c52e3451640deea4e25e700837e566842b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2742/magpie-cli-linux-amd64"
      sha256 "e3a4a61dce645107a7a6f625946618fb3a2484e83cb58383e92d3b08c5f88cf1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
