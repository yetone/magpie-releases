class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4951/magpie-cli-darwin-arm64"
      sha256 "a89393bd57064120ef9d9795b4b44371e4e42cc0ed5b526967045ea61dbe049f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4951/magpie-cli-darwin-amd64"
      sha256 "1c4abb9f89652a4c3d1d8892e7b4ed5b68bae88545c6c461d52176ebad5f73e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4951/magpie-cli-linux-arm64"
      sha256 "a3bcc7293576f7d819cd4d68b766eb5ab2f50460181a30d99b7b546d86a5016b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4951/magpie-cli-linux-amd64"
      sha256 "f697efaaf344d401cc3ae9231d7c6f765a433e84f310b5cfbfa8aa647f6f539c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
