class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4526/magpie-cli-darwin-arm64"
      sha256 "f7a23d9ec8f19f017a9f58ca60d93fcd5fbfc29fbacf2d50dcf7b7cf9427ece9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4526/magpie-cli-darwin-amd64"
      sha256 "06d4fa2afab58aa7e19b7361a50d987ffc94bb388043215357dfc1adc1fb2fc8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4526/magpie-cli-linux-arm64"
      sha256 "28401b82233dfc34fd76dc88b923b7a8d07b94dc02a8f5886d68e08c8e53cc86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4526/magpie-cli-linux-amd64"
      sha256 "4b11e1765c836d3df25d35023ac4b72ae9ace8dd60b6bb55c754fc8a61ec3f75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
