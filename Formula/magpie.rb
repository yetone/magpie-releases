class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.134/magpie-cli-darwin-arm64"
      sha256 "5d43a0ed5f627c65419964e0824c5bcdc07ca6ab13cddc38828e4c1a4314628b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.134/magpie-cli-darwin-amd64"
      sha256 "af0bf6a0cfe2c48bc9b1e96b8b83ee65c21ee80e7b544d8866879d7b51213c6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.134/magpie-cli-linux-arm64"
      sha256 "98a5511e95ebf9031b4fd2d35a227110ac4d1c407654c1a42127ea34b701bea8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.134/magpie-cli-linux-amd64"
      sha256 "4628cfa69338bf0a817bbeaa1977bb86caca1f18787a4b38382ac87844efa282"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
