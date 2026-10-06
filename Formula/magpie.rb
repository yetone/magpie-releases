class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1092/magpie-cli-darwin-arm64"
      sha256 "d16e0a4e29442d8a7627a2e5a72686ccf06dacae6be4f1c1e786c9803ac81978"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1092/magpie-cli-darwin-amd64"
      sha256 "670a9f2d0fdfb9a5a6bd5b32b055b6ddd34075e041bacedc78f71bf0d0e60f1c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1092/magpie-cli-linux-arm64"
      sha256 "3bae0a4198c53a67ba4cbcd3a1073ce0f1d32ceea77a7a78d3410767d4c4f0bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1092/magpie-cli-linux-amd64"
      sha256 "273d63626464ce545a22935a74e97b2efea9eb0a4f2cadb6a8dd4070b1db53c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
