class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2592/magpie-cli-darwin-arm64"
      sha256 "ef80542b70ec65256c8d40037071af02453cf22391114ada7e8e8701eb3a5df8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2592/magpie-cli-darwin-amd64"
      sha256 "9cc716e8e9e88644d3a0e7c7c4a4dbfb0aa75cd4e4a3b893e4db1e6a3d3b59e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2592/magpie-cli-linux-arm64"
      sha256 "0d55a66d53747a5f0b86ee451ded7890de871a4af5b479c53498f6a0a0a0b455"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2592/magpie-cli-linux-amd64"
      sha256 "563f6bd68d8d0f091786287174ebad82315c5e0c0a379d200b2945a0e9ebc054"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
