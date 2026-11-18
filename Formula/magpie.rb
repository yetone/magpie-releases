class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4490/magpie-cli-darwin-arm64"
      sha256 "d60b87461b2e6905504344bba4980730b8dc2ba2aa2e497e2cdc8fdfff18bdb8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4490/magpie-cli-darwin-amd64"
      sha256 "af3caeb1f12f5964ae03c3faa86f1a4c599d9ea30c336a889f668b6a0addc6f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4490/magpie-cli-linux-arm64"
      sha256 "954da168be04cd4203a10a99066b9b2b8d921921a3ab0b608569866a6d093700"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4490/magpie-cli-linux-amd64"
      sha256 "278687623f7c4e73a3485b78e3545daadcea8b90301bda36d687e2d0417e2091"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
