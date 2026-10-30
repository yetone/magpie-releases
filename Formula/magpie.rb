class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2227/magpie-cli-darwin-arm64"
      sha256 "b75b198fe212d400d6d2efc501d36100f587a751f706ab6d48a37c691adb459f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2227/magpie-cli-darwin-amd64"
      sha256 "a38eff88636c35462429211d01ef2b431f279ed81a7a73fed26a819dff095b2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2227/magpie-cli-linux-arm64"
      sha256 "e945f153345f5ceb0fbda2abaa9fa70f0b5dfe3f0672ab70cd1dd7a78cff0409"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2227/magpie-cli-linux-amd64"
      sha256 "86ff4a59b4411c3f982970bd086839f8ca6bb30c8908f4ba302e9c02bbbb6fe8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
