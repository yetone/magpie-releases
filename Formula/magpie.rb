class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3802/magpie-cli-darwin-arm64"
      sha256 "df8ab1b45511ab70250285b003f58767b0dc61f3ff362202739a3713e16ecee1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3802/magpie-cli-darwin-amd64"
      sha256 "a1f02e94543b30d8567f867f7c20d310fb4b193409e3837eb2d3c33e529bd4b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3802/magpie-cli-linux-arm64"
      sha256 "32cefea3132c944f83d45579bbdb47493931b117d77e95442a392edd6a383888"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3802/magpie-cli-linux-amd64"
      sha256 "6cc6d7a66e869fa50391f396e970528f28c68093e30731058366d27d9c37a2c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
