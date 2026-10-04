class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.894/magpie-cli-darwin-arm64"
      sha256 "91851ddb7e625c8455866af38a84fac6470695c5584fee2d5ff28018e2f51545"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.894/magpie-cli-darwin-amd64"
      sha256 "3c72ea09b2eb7cbeabb5777a5b68dc8ee495b5b76b60b4bb3186810523cee424"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.894/magpie-cli-linux-arm64"
      sha256 "1957a4f0488c2adb3ca7b9f94e69f5dea4030f38266545a4eefb4a69eeb4bc1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.894/magpie-cli-linux-amd64"
      sha256 "206151891d5341449fbeab2f594b3d67d6b98a0ffb80201cdb45e067b5947ec2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
