class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3803/magpie-cli-darwin-arm64"
      sha256 "78540c23618bfdef64b4502f2c558d878665d9e60fb9228d42d5d02a575a3b75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3803/magpie-cli-darwin-amd64"
      sha256 "ded5d1f988dfc037b19a103d8332370f999a04173dcb2ec784ef5283a7df5fda"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3803/magpie-cli-linux-arm64"
      sha256 "5adb69fac5c7afc244503d893b3ad268b82d67b2d52925b58e13bcbc5d7bbb77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3803/magpie-cli-linux-amd64"
      sha256 "2000c2f2861d83a1df72ed7bdd6fb523392e670b9e155004217fd420cfb127aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
