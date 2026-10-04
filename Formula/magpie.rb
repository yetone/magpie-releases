class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.918/magpie-cli-darwin-arm64"
      sha256 "2bf21618c847f34ba413f14a029cbda76d8f012c5c301b6a08fe643055dcf894"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.918/magpie-cli-darwin-amd64"
      sha256 "19442ab693b51d9135dc0785c5a4deac6e4ed47045105afe0b44d83a5462f355"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.918/magpie-cli-linux-arm64"
      sha256 "02718129fec21a0717702379c01dd03c58ad08ffedff0912b7494dbd82f4a946"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.918/magpie-cli-linux-amd64"
      sha256 "711335982b1bb3aa8e4880d371b330523b7fdc80f9b2ce961a58686c6bd973a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
