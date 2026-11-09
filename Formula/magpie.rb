class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3377/magpie-cli-darwin-arm64"
      sha256 "343fadd8e8f6d7020600fa1ac2e8487f62024857b84e3b0c1d9605c42fa68e65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3377/magpie-cli-darwin-amd64"
      sha256 "c85510f41dcd118000de6b580eed07185b4fdeb55e64199addadbffcf4a2378f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3377/magpie-cli-linux-arm64"
      sha256 "23f5e5af5f7dbe613e92b841b422feed2ba1cc200c719017db933c0a14ba5f40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3377/magpie-cli-linux-amd64"
      sha256 "48d28b369eeb4b3d0800e4d774e3ad7cd7f3806aa9f11117251229ba7d03568b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
