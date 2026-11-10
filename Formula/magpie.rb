class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3649/magpie-cli-darwin-arm64"
      sha256 "b41ecc66e3e5d1ce5862d6de00da63de8b88a6b8b948ed86be67d2b9b4624911"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3649/magpie-cli-darwin-amd64"
      sha256 "7f559b7432389d468a05e9848d2d664c005a71382ee884a2c87eb12d6bb61b33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3649/magpie-cli-linux-arm64"
      sha256 "65dce63f1fd988fd5fc247be02f95e3bf0b92bbb867a8ed1b46d0dbc7d392fa2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3649/magpie-cli-linux-amd64"
      sha256 "cbc6de70192229ba154ec9cf22bfc1b092ccc37ceeefd848bbb060084cbd0bb4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
