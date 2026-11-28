class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5002/magpie-cli-darwin-arm64"
      sha256 "579171dce37dcd665a5f53aa44c37488865ce618bff248d3fed6f3f093babf16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5002/magpie-cli-darwin-amd64"
      sha256 "3a49da14d4277cad489fc83107d8d336e3e8657d9df7a1a09befa708ddd9281b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5002/magpie-cli-linux-arm64"
      sha256 "254ff713324db1ac4d1b0d5ed6b9efface24162a81b51e901c39a15d2bab6e82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5002/magpie-cli-linux-amd64"
      sha256 "6fdbe13fbb10a915972a566eed3554a5921b6b462551d8855102ec1a8b2ec3d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
