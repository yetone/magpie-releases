class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2823/magpie-cli-darwin-arm64"
      sha256 "4aa722fe21590e0c2cba132ba2fc3b3179b35b5901b6b4fea69f0a3f633bca25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2823/magpie-cli-darwin-amd64"
      sha256 "69e89223ea69bbb4ec98cbd07e8e41cfbfcf81f6bad52ac57c5ce6bfebf9fd1d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2823/magpie-cli-linux-arm64"
      sha256 "76dc9082e2c93b7ae7e362fbdda1957097d54351996721747433db6077936e11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2823/magpie-cli-linux-amd64"
      sha256 "f56c72bed74dfefa19656a25f45fb093b687a5f457c1f83385d858f98902a21c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
