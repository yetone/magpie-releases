class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3771/magpie-cli-darwin-arm64"
      sha256 "838b8721c36755d9367925c15d2777509cd0558dfe3f1510d1f6eb76a27422f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3771/magpie-cli-darwin-amd64"
      sha256 "3171d4e10922f7fc94fb881e5f635108b905e4ba62e0a191c89b22ae82bef7d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3771/magpie-cli-linux-arm64"
      sha256 "7c0fa097787cba0689262969d877b2c34bc47bee760678e44f6bfcfab1ecb132"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3771/magpie-cli-linux-amd64"
      sha256 "00efff36acf119afbe1fd3c10d0712d815b76028bf8f3ded965565c205b5b2dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
