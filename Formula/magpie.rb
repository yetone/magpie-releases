class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4023/magpie-cli-darwin-arm64"
      sha256 "63d659b87b1ca521e9b9a541ff325c23f60935c2dc95106ac5bbd9f3cf94c3d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4023/magpie-cli-darwin-amd64"
      sha256 "033e2da33c63dc804270b0919557242313ffcdc957104a1745c6c2c44de96583"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4023/magpie-cli-linux-arm64"
      sha256 "8e66f1b50d0e822a132901ef0d0b10cb08a1f2f5115f4f9e2b61a98c8aa07ce8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4023/magpie-cli-linux-amd64"
      sha256 "aab6b65db5e60acd50279c39ed11d46d1f236503b2692d1a0aa0fd428216650c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
