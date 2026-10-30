class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2207/magpie-cli-darwin-arm64"
      sha256 "287311499a8d2d30ff1c770746e43517c09fb1a8569a4f27ab36150c42fe3d39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2207/magpie-cli-darwin-amd64"
      sha256 "1e60938a25fc40972de7ee2b09dd3c54d4097cee41190b7e41270a3b6e7cb096"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2207/magpie-cli-linux-arm64"
      sha256 "33374a5616dda76beb764094fa4967ce0c2dd535f73510c970f2be06afd9a099"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2207/magpie-cli-linux-amd64"
      sha256 "2c53705a15d9da4561f0cf8c437b329419a856bf8e71d2de50408fe48111b2ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
