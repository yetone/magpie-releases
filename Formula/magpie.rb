class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3575/magpie-cli-darwin-arm64"
      sha256 "469e5484318648213c5d2c5e41cc370f656b897ccfedf735981b34cef1899c89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3575/magpie-cli-darwin-amd64"
      sha256 "b28f3b52b105e79b5f2b65603afd7aebc02545813a27a7abfcc22683153ea1bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3575/magpie-cli-linux-arm64"
      sha256 "900decca84c72aeaf5fbf4baabe762be8a1ad55a784a7859d2eacde4a3deaa24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3575/magpie-cli-linux-amd64"
      sha256 "6d36ef3a7b52b043e44b7c8435ae32307c4ef51ac42e7bf34d2cfc3b48ff1870"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
