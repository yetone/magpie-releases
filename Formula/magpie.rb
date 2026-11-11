class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3798/magpie-cli-darwin-arm64"
      sha256 "2b0b11b348f5f3039e30ccfa3e116fa5c12d1a0db5e23ded4f653ffc79a2a7a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3798/magpie-cli-darwin-amd64"
      sha256 "d5429a7ba599936006dca2f4e8bbfde555f9f42809cf8fa2d6b1fe98dc612186"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3798/magpie-cli-linux-arm64"
      sha256 "82c2b29e1ada08d0e74afac306df68a70a9b9b83eb92536dee596965d8b32b0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3798/magpie-cli-linux-amd64"
      sha256 "a9e67681d679d1b05b5752eed53f7838d8b19a5dbb15b065d736b015a2a09119"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
