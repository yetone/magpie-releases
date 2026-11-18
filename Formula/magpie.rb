class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4484/magpie-cli-darwin-arm64"
      sha256 "0dc4dcde6aee8ce4d9c6b1798227efcb9020e554035f3a1e49f11f4b3b9b26bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4484/magpie-cli-darwin-amd64"
      sha256 "fa8a5587cef2ec455a39bba314b9c57c47ab51025058bb4c162d5ec03d963158"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4484/magpie-cli-linux-arm64"
      sha256 "3b586f93a1460a74037123756ce3b26253f15d73a0b460636a71ef8a979c7f9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4484/magpie-cli-linux-amd64"
      sha256 "11760acfba9c84300210515d7f5e0e5e29200989e39a6eb0fa70fb2ef0201e36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
