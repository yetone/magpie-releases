class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3183/magpie-cli-darwin-arm64"
      sha256 "f7f77d10cfe17b6280f586eee8ab607673a66a47bed9ba027ae482462adf8c52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3183/magpie-cli-darwin-amd64"
      sha256 "b4aba45ad7e406925052fc09add0c81f1d874a9c4cf567efec35c735228d8aaa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3183/magpie-cli-linux-arm64"
      sha256 "632448bfc169ea72af331f2eaec2e9cebc58ea33c707a2a87ed8759934509981"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3183/magpie-cli-linux-amd64"
      sha256 "a28353d56b0176ef11864bb847e3afba4d6c571728938f9e2e6459650679ca3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
