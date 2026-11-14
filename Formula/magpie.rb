class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4155/magpie-cli-darwin-arm64"
      sha256 "4c70eed567a1158f8810f8a494447fcdd3fee6cbc96d354f897057fae411da14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4155/magpie-cli-darwin-amd64"
      sha256 "ec7c40e13dfd25784deb9a5f08e41fa76b4a25a9f0d6b76e195915707182fa34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4155/magpie-cli-linux-arm64"
      sha256 "a83143a63f7ec883ccd4480a152aeaa126d5f7595cb1156c340414470f20f2a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4155/magpie-cli-linux-amd64"
      sha256 "17dba55205ee4ae1eeacc356f274780d98a3f307e4e34bb4ba8df2c3f3234df6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
