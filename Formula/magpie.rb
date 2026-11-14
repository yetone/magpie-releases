class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4191/magpie-cli-darwin-arm64"
      sha256 "e820b5364be9bc4666b9d5fc73d26a9d5cdbb80e9d4e3757434509f149489558"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4191/magpie-cli-darwin-amd64"
      sha256 "bf37691ce2b75cefdff4eaf0bc7f41e9aa5d462f22d73e0235894f05abcf35d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4191/magpie-cli-linux-arm64"
      sha256 "22d3aa2aaef3837ed82bb387cbb46753017cef7e89e61e6e38948d57e48109aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4191/magpie-cli-linux-amd64"
      sha256 "a63e445c2e0021e705816e9ca92ca601c2cf193acbba6ddb00066ee09c493d0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
