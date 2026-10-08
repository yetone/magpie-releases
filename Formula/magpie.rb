class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1118/magpie-cli-darwin-arm64"
      sha256 "907a24b13a04cf8500910a905198c9329a57b53e2303a9c7924227715f4e5ad7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1118/magpie-cli-darwin-amd64"
      sha256 "3288c13e2dbd2ca9ab7c26216d9b78a19b91822011f1b79c64837090bb620b8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1118/magpie-cli-linux-arm64"
      sha256 "9f106990e161287667ecc1156641a968604a30f796bd38b1e20447d29a892bb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1118/magpie-cli-linux-amd64"
      sha256 "19a3b4d01ddb3bcc594c3512c4265474afb09382558bbb4b98262d25aaf97955"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
