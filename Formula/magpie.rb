class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2059/magpie-cli-darwin-arm64"
      sha256 "873152f549356e7bd9eb8e3d3001d08abe75d1f793d140ba87067753e108f8e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2059/magpie-cli-darwin-amd64"
      sha256 "a35e3f8529df2b143002f2fe905d7ba2cb37f1dcbdb65c0ba8bf6eb8a052deea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2059/magpie-cli-linux-arm64"
      sha256 "695d5361911fc19508bdebc94aa57c6d91db152c2d9c455fccac0dd70378b140"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2059/magpie-cli-linux-amd64"
      sha256 "eee3f22a48ae2ba4627e0bf3f57e83e2dc44b3d5c15ad67770b7f770f6e02e30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
