class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3687/magpie-cli-darwin-arm64"
      sha256 "f0445dc5e7a53103fb68324503aa726768b26cc580789763a0977755855daeb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3687/magpie-cli-darwin-amd64"
      sha256 "ca450372a49e807c178318301d618c1b176dede4e58c7de873f99c3e2b77a2d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3687/magpie-cli-linux-arm64"
      sha256 "c1d8694a0ec9a46d285c0af2a65cc8fedba3bd546d6dc1d53fd5c72bfc21d313"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3687/magpie-cli-linux-amd64"
      sha256 "cf9f92469b9d5f9b7d9e1f3f620e9dc6b47d13d539e846fdac7307881ffed63b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
