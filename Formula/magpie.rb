class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5045/magpie-cli-darwin-arm64"
      sha256 "84cd014130de0f5364189b043e4826916a8f38e500be00504029f9dea839234a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5045/magpie-cli-darwin-amd64"
      sha256 "cae3afee679a3222c4d4bb274d3875501751d87fac3920104d9a97640cc7d467"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5045/magpie-cli-linux-arm64"
      sha256 "a481a7c5bc81e426a0bcb0f3a5ae3713e06badccf9dfa710ae4f0989ceb24144"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5045/magpie-cli-linux-amd64"
      sha256 "cbcff310ea994a505bd1787f8545926a8e858e6688447173f202595bfff7b273"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
