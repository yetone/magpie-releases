class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4911/magpie-cli-darwin-arm64"
      sha256 "5c954a127903f459f0121c55877738ca16bdc99f064d3163d564daa73c91c271"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4911/magpie-cli-darwin-amd64"
      sha256 "d07cb3949dab3b46b549ad18e45f72de11b8541f6de7a55e0b88b79ca7691b87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4911/magpie-cli-linux-arm64"
      sha256 "ecb51676f1abeb8019cb966a2a6090c92a61364c6d4df1c961bf11c06ed78ec0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4911/magpie-cli-linux-amd64"
      sha256 "efd387df4f1174fbc6c22a91302dd73b366f3bc2d2732a6d90fd5280ba9174aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
