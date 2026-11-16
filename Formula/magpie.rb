class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4288/magpie-cli-darwin-arm64"
      sha256 "6b551b004d1fc1b283fd916f9f93ec55a534bebbebae17429e48b9948532a7e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4288/magpie-cli-darwin-amd64"
      sha256 "562cd6c928076e97d89179810285729e7fbec3faecf168e62657fa08c613516f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4288/magpie-cli-linux-arm64"
      sha256 "4f4f9a76971ee1fa15c8ffb6560467662303e20c716b4960e8df4043646135f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4288/magpie-cli-linux-amd64"
      sha256 "8620b2e2cf1f5c2d9743da9ef88f813547473876de23945f4f956b5d8dbb206e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
