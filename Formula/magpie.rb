class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4451/magpie-cli-darwin-arm64"
      sha256 "b214dbc8bba39022d5308446914f1300d5f979af488a36cddf546740afe78c09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4451/magpie-cli-darwin-amd64"
      sha256 "585096d93b67e7974638ca30b283d118fa597992721418be000a25ac53af1677"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4451/magpie-cli-linux-arm64"
      sha256 "5831cab19cd20b84af571d13bac14facf89fbfcccf77a35030dfba03a840f793"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4451/magpie-cli-linux-amd64"
      sha256 "451ec8a8d6c9ee4074c87831182b1b5a473a308cc0b734ba309a3783757b489d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
