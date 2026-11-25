class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4818/magpie-cli-darwin-arm64"
      sha256 "46dce2450c2057d5fc8dcd16fbef5876612d4fa9c7044a07f4acea0d1face7ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4818/magpie-cli-darwin-amd64"
      sha256 "a1406f5713cd566e298e5ec0f0189e924234ba7fadadbe736a635c1ebe76f241"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4818/magpie-cli-linux-arm64"
      sha256 "46122965bb6fabe984532c09e5059768682aba6e4661a6a94aa1d32aac3b2ba2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4818/magpie-cli-linux-amd64"
      sha256 "2d0bbfca042225cf37907e65653d008ec49320d187d70b0b8e29c5b1769b2ac2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
