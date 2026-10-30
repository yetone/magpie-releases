class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2147/magpie-cli-darwin-arm64"
      sha256 "6d428fd004d37d4ba811e755d82f43a92d44ba1363314b3aebe1f4f422d0c2e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2147/magpie-cli-darwin-amd64"
      sha256 "5aca73333ca9e073739c53889eb4b5d5699d83b1bab845a95920cfad14885714"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2147/magpie-cli-linux-arm64"
      sha256 "d5c1aaf5c1e4960d0350f5354090eecd98225cf7055dcc6d328a99661175a8c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2147/magpie-cli-linux-amd64"
      sha256 "96e31b709e0c5b1dd5382771bba85be0bfda17eb29948bf5e96d1acec3857f42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
