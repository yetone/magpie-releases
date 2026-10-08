class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1111/magpie-cli-darwin-arm64"
      sha256 "0c5697aa2401bc6012b92faf9c345eba1be6dc321d4898965876c48ec48cb7df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1111/magpie-cli-darwin-amd64"
      sha256 "dc3db3a0d81d9557ed9eb90800a24e135f09b772b64c23bf46780f34127e1462"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1111/magpie-cli-linux-arm64"
      sha256 "f4f310306d540c5b6858bd5f16608ac7122da5e1eaf01db7ce8067cdfd54f2e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1111/magpie-cli-linux-amd64"
      sha256 "fe6eb94ac246c67bf944a0e17aa9349c0eeb518a7ce8cf8500f04a77a25fd41e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
