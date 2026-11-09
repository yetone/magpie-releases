class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3380/magpie-cli-darwin-arm64"
      sha256 "ae6f1f8fd108ee913256dce08106e8cc5daa3c109154eadcc81f292dd5ea8387"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3380/magpie-cli-darwin-amd64"
      sha256 "1138d2426d4cacbd7cf37a19598c4ecc577b8d54369a908e8c61c2fbb28686db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3380/magpie-cli-linux-arm64"
      sha256 "ec82266f1a8643c94f2b487cd906d97821344ac4b48284354bdc097f28fc25e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3380/magpie-cli-linux-amd64"
      sha256 "1fafbd27716dea0acdb55e72cf02957dccda12c9bf9bf8bb014b27b6eda5e381"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
