class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4960/magpie-cli-darwin-arm64"
      sha256 "3a6b60561f62992f21705a35e54491721ef5caeeb617827286ea875beb216c66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4960/magpie-cli-darwin-amd64"
      sha256 "7ce8890dabcc7a4ffd3270e4b5c08595f9a568d294d21653c9a78b374680c5ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4960/magpie-cli-linux-arm64"
      sha256 "c18668113bfbe5076dd5c2bc717d52be64469a947d0e7209996e4d2e00ae63c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4960/magpie-cli-linux-amd64"
      sha256 "f4cb371fe3655d6aecc8e0005100b364c390fc408f1e7a33ea31ecda05530528"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
