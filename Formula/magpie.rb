class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3193/magpie-cli-darwin-arm64"
      sha256 "d276e1d36eb7e173a4aa6d53d29f7a2fb4e57996771dd088af58f67d7396dff1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3193/magpie-cli-darwin-amd64"
      sha256 "47789c88d0de2ed71385f4b0ad7d95222817d0dbb4997ad1bf3765cfc312d1fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3193/magpie-cli-linux-arm64"
      sha256 "91c2ad55e53624b9a10b2822e58d9ddd2ff1b13467c982112f4dc85e6b8f558a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3193/magpie-cli-linux-amd64"
      sha256 "5646c068c1744e6e19c7c5a32eb66daef1c2cf9ada303c0c128eaadd6f235d18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
