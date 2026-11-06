class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3156/magpie-cli-darwin-arm64"
      sha256 "8e0208b2f49814654cb934e50b92215ad0ae3aea9eb8c876eee6104ee4cb7c11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3156/magpie-cli-darwin-amd64"
      sha256 "1dd77e236f8321a310619e75e948916421fdc39eb791ad1a2cd99a749be3906f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3156/magpie-cli-linux-arm64"
      sha256 "c2a56a305d76d096091ac2f38c5cc038987646329b76288c8e70de42b3154d59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3156/magpie-cli-linux-amd64"
      sha256 "0a29a7f7feab3e7756b798d908b330ebbde4d9633340b2778384aefa39dc4f0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
