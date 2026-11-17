class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4380/magpie-cli-darwin-arm64"
      sha256 "90d563b09a1e3bc304d55d7e79c6e730f38c74e29d5c904c63d939f550bcc92e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4380/magpie-cli-darwin-amd64"
      sha256 "08178f85620aaf0a776237da91de7dee75310df3e06a28f8892e19a8025bd0df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4380/magpie-cli-linux-arm64"
      sha256 "dbd3b2b67d40d2b23fdace15d1af2ecf8d75add22d89af8a907c07a53602053e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4380/magpie-cli-linux-amd64"
      sha256 "32dc2b97ea7d2e33ef9edbf16b44570c2a68fa4375e4309f7fea75fa1fd79df8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
