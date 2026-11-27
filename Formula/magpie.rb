class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4934/magpie-cli-darwin-arm64"
      sha256 "2967adb3c152375d92e11f2d0ed7ce1f24ccbe26fee952f0a2cc10959d7387d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4934/magpie-cli-darwin-amd64"
      sha256 "1f2dbdabb380fe8e9787c890ed671b992e6a8e5d990e5b5398e280820ef46d0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4934/magpie-cli-linux-arm64"
      sha256 "e0083a6afac94bd48347d37b70ec1b09042d5fc3cd27aec703068130da7338de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4934/magpie-cli-linux-amd64"
      sha256 "825b4fa01d84a523d0c311b81267accf2116f158db34f8b1936b242a47c7557f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
