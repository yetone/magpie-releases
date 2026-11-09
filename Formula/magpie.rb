class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3461/magpie-cli-darwin-arm64"
      sha256 "bfb30336d060ba596d123025a2612ec70431156dbe983b2283de07e22279f0f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3461/magpie-cli-darwin-amd64"
      sha256 "a69c82f901b769aa96919a638e8a9efeacde718f6f6aa3d51b61fbc1870ff3d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3461/magpie-cli-linux-arm64"
      sha256 "a94020bab1b2f3366e1a7d3cbfd91db65b2d115eacb736a943ef2fb28649ecd9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3461/magpie-cli-linux-amd64"
      sha256 "b0b4e64215b9cc5753c02eac0a91afe0bbfb9c7570fea42df24d792c03736fc9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
