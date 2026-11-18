class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4426/magpie-cli-darwin-arm64"
      sha256 "9e769c062c67ddeef045c9496a2ac039cb50788cc87210264c5b0e180d13a7a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4426/magpie-cli-darwin-amd64"
      sha256 "d2a5fd713b308fe7778ff6da944c60a32d2ba7a596ed3ed50ce8ecc159c2fd56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4426/magpie-cli-linux-arm64"
      sha256 "7239ff2e7f5009edfa8fff0e0ee630145b43c22df5cf59a0d5be6c2474f17d6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4426/magpie-cli-linux-amd64"
      sha256 "82c23f316cbc9424ea24312c073216072d797213b9bc45e1b2ec8c6d6ac48160"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
