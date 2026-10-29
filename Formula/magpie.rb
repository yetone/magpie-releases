class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2038/magpie-cli-darwin-arm64"
      sha256 "44cb415d6c09dfa9e2d52a6e30fba44a835b477e517b1549bf5ef46f24a2af2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2038/magpie-cli-darwin-amd64"
      sha256 "3c858424a8229eeddc080254953dc5c2e0b5e82e367e85d8147aed191c5589d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2038/magpie-cli-linux-arm64"
      sha256 "24133b19db245225a2f677c32f49bc9d0d50edd23f207e3041fdb0d76c70c04e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2038/magpie-cli-linux-amd64"
      sha256 "150c86d0dd2994858c1d1b7c7f68b46d309ea803e0a2e9779388c9c61e20c90d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
