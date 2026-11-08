class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3310/magpie-cli-darwin-arm64"
      sha256 "0903b353227da7cd63dd04e8aee2bde828dd2e194680c2f6ca8fa69f930730c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3310/magpie-cli-darwin-amd64"
      sha256 "8bb488632d50210fc2c29bd3eba40b16d2f4199ae3e419ede38ea111e98deeee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3310/magpie-cli-linux-arm64"
      sha256 "12f28b060f23be1064b13a85498ffe314a1eda6fd02d9f14a2fce1a301c1e9c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3310/magpie-cli-linux-amd64"
      sha256 "97cae3de7fd86b8d15ce778748cb26cfa5383ad1945efc806742a9aa4cc0f2e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
