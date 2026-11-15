class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4267/magpie-cli-darwin-arm64"
      sha256 "a17fe8c9ef17364a168724f75583678bbb37e8c432951fe40d7965bfd2d2dfba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4267/magpie-cli-darwin-amd64"
      sha256 "93bed9a05671ed73bcd14e8ca8e96f77a8a0ab790d39aa6f988209d07dddefe7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4267/magpie-cli-linux-arm64"
      sha256 "5f31a0c299f7b5b5736954096540d6aa15961dcc898e0459b49a92c2641c0a44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4267/magpie-cli-linux-amd64"
      sha256 "ed370556a46a0e83d2ef48686f1ebad7e85e2be6160d8a3b8f70dc6c0ffb9bf0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
