class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1057/magpie-cli-darwin-arm64"
      sha256 "78de306d5d3e97dff0fcae6b9e92e39d5a1fc1844eafb5e6ed73c64fa0a0e2ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1057/magpie-cli-darwin-amd64"
      sha256 "7e4940fc921d55133e219a0e9f7da8c418343f8eb961d6bf1bff598345ddd3b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1057/magpie-cli-linux-arm64"
      sha256 "2e6c02ad2d0b56f502421e37955a6272a8b49833a21aa2c59455f178291f8e67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1057/magpie-cli-linux-amd64"
      sha256 "e04c3b74be408d7cbae2b15643560a15432526f481d3f4cd30a435d9d1331d20"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
