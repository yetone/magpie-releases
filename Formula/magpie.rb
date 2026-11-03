class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2864/magpie-cli-darwin-arm64"
      sha256 "9d478b7ac69e22f552f560089c9d86669ff620f54565afa958bcc6224c75b01f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2864/magpie-cli-darwin-amd64"
      sha256 "03796b0d84f6e8eba1c0199c2f43031dca1dd8ebf550d2a51ed665dbbdec1268"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2864/magpie-cli-linux-arm64"
      sha256 "6d49f9666c3a102738953dcfc5ec9e3b833d560d2f8e475dfc09a5146bf75414"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2864/magpie-cli-linux-amd64"
      sha256 "6e8015d67de497d44edd1635b0d816a35b9207838d8b7f8e734dd9837a2840f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
