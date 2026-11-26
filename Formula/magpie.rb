class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4846/magpie-cli-darwin-arm64"
      sha256 "b583b820ebacb5c382797b2b7f558354b650bbc157627a6337c4d30fcfddf60e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4846/magpie-cli-darwin-amd64"
      sha256 "9c72b62d950219054422a22e8696885140ea93e8e1c7e236fbfe414f3fa02387"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4846/magpie-cli-linux-arm64"
      sha256 "1fb937d857eb7617d0637a8affe53f6d28e727c9021a012ffb9983c02f718243"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4846/magpie-cli-linux-amd64"
      sha256 "1af6cfaa1ead752e2a07a283e673d720979b77183de258313c77bb2f52d06d34"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
