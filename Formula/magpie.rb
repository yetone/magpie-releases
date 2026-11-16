class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4307/magpie-cli-darwin-arm64"
      sha256 "683602217b9f4a88f7550a9e211a6e58e29ca633d2810443496ed614f27e6ef0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4307/magpie-cli-darwin-amd64"
      sha256 "e0bb5bfcf83288052df6c8cd9e437d6eaaef90c792be19a6a6a73dd05fc36d9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4307/magpie-cli-linux-arm64"
      sha256 "233ac66f8aecc60076a3b49f33e494d68637a94d26faebc611d25d966e5db5b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4307/magpie-cli-linux-amd64"
      sha256 "08f927ecf228aea85ca937e496afcfa0fd231bb8da29ea8247548c8527a357d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
