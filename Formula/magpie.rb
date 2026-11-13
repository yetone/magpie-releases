class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3965/magpie-cli-darwin-arm64"
      sha256 "5826c64cc4280c903e6800635a5b2edaf2b687a0f1186bf4fcb59b2edd61bb3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3965/magpie-cli-darwin-amd64"
      sha256 "37a94b0b67d514c6504c93697bd78947357f4d18c9d6090b0a406433d14a83cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3965/magpie-cli-linux-arm64"
      sha256 "96be7ae854c4fb6a71b4423531922d5f46f7d44f54befb0098326e9ce732b890"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3965/magpie-cli-linux-amd64"
      sha256 "01213b77d91b5a8da4bc1636b7f1ce7b54a416d8407a8fb0de1b29755ba5fc5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
