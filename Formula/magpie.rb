class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1974/magpie-cli-darwin-arm64"
      sha256 "9d4c811ced9390b6206922c4b29e3a7a9baec7e44d2c5c59e5d95a3d7b2cce4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1974/magpie-cli-darwin-amd64"
      sha256 "4e1ad505f3fb84fb842b2dc4f0b9470893e031832bf9bb0aa667d8cb43886664"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1974/magpie-cli-linux-arm64"
      sha256 "5d741978fb3349821180596c7d0f163fa3428ad778cd06766d01efe5c8bf32c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1974/magpie-cli-linux-amd64"
      sha256 "56d56677a63aa35d9a921fe8c6f7964102f620a8c6567e9c7635ea332bfa62f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
