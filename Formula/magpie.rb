class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2516/magpie-cli-darwin-arm64"
      sha256 "359a6605973004f7a090955df1dcf7f6bcc6840f7a4c4b2cf3dfc5375a8b1f82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2516/magpie-cli-darwin-amd64"
      sha256 "1e761bd56c7a3817801f4ab28dfc80950a82e3e90e5be7ce251d69ba8401b2c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2516/magpie-cli-linux-arm64"
      sha256 "96993f5dd6687bba91ac259700deb7a204786cb69cba158652021b38251e9700"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2516/magpie-cli-linux-amd64"
      sha256 "042286480a95c25257c47c79143e4505c9c973d42369de905d2e4236de334eee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
