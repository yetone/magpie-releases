class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1908/magpie-cli-darwin-arm64"
      sha256 "ed204ec6750e53a100d5e50baac17b8d557b59eeae78aa4e89add555dcef647f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1908/magpie-cli-darwin-amd64"
      sha256 "24d25de64f86c1b948aa66dcea414ac1e3f883a21d4de1f6db4412cb1a0e0093"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1908/magpie-cli-linux-arm64"
      sha256 "e47f2c2efcc7b901d32b99605c54d42bf038a04d1cf835348aff6f1de769a046"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1908/magpie-cli-linux-amd64"
      sha256 "7c33464c0bda27ca422bad411df54ebcf8aee63e8957de6778aa52c8c4d7c99c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
