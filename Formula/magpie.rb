class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4635/magpie-cli-darwin-arm64"
      sha256 "e6e2dee4ad0196f08da0a02a732534dbd354a9861f9570a7afd3237265ed43b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4635/magpie-cli-darwin-amd64"
      sha256 "842588c78df91c21cab30a773386dac77682764feba265c17f35e52565ca1e90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4635/magpie-cli-linux-arm64"
      sha256 "248ebbb1e358be008a31f83c9001e4bbaa9b6cd042caf9427e99be0414c200cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4635/magpie-cli-linux-amd64"
      sha256 "3b5bc096f05f76bb7c7efa927071d1c4fdce04030c87e2b7c099f7d445181532"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
