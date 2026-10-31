class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2348/magpie-cli-darwin-arm64"
      sha256 "b03cdfefde54f9c06a32043e19049a0394fedbb37f364953c681672fdc82dcee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2348/magpie-cli-darwin-amd64"
      sha256 "c020b9dc0143141f87301f6516fafbe10668e8338bf0e3f6f88bf1441c9eb580"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2348/magpie-cli-linux-arm64"
      sha256 "414a17038c961187109f290e7f14d7b6d175b38eb2fe85581b48cb53bf5fa749"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2348/magpie-cli-linux-amd64"
      sha256 "d0687fae1840b3517b0bf1d275e94c95fef63d52f35d1a548093d5afe8d0f70e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
