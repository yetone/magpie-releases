class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4348/magpie-cli-darwin-arm64"
      sha256 "361c6b04b0c188051fd7f843439ef4b8f6fa5be488267446c7a8ab3279bfacd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4348/magpie-cli-darwin-amd64"
      sha256 "e04a1b98858654691cf9320de1b8636b68c089c887f8e4c4ad20ef851a55bf12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4348/magpie-cli-linux-arm64"
      sha256 "c144beebf32903b26c010b38d7273c8875ebe0380c06b798663b90a4d96c989b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4348/magpie-cli-linux-amd64"
      sha256 "760c56bf40b2366e4acba594c6696a69c9aecb31a0ea2bab3c9966a6f7ce7632"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
