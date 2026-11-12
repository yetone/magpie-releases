class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3887/magpie-cli-darwin-arm64"
      sha256 "1bd411c8d613ada3aab3c18d5d88b063c41f6dd2ded01d8c27dfcb8b73790580"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3887/magpie-cli-darwin-amd64"
      sha256 "265996b739d26be437594e79ad74169c45be62b5e955590c126cc3ad6d5b9911"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3887/magpie-cli-linux-arm64"
      sha256 "5a24cf476629185a4c36af020c8974499c2e520dc4ad950e8284611860daff70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3887/magpie-cli-linux-amd64"
      sha256 "bc48e0d4067f5cdc6df7cac28abfcf69899c6d586fc6ee97ba25aa577677ac62"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
