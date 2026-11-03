class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2816/magpie-cli-darwin-arm64"
      sha256 "fb0014ead28d03d25d8c6a34eecaf1049b77e04fa7239f8f1d79b4c5c7b4c32d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2816/magpie-cli-darwin-amd64"
      sha256 "a343db6ea3b70c0cb5613b122d73e4c3d440b29561b6f8d74c236fd4029d3b67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2816/magpie-cli-linux-arm64"
      sha256 "2a4ca9f905a0be4242133c2228f2e989f142855b87f788a4853695bac010bf04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2816/magpie-cli-linux-amd64"
      sha256 "4feb8096f284288dad7289f4b4e20bcaab7af21f70decd967d2d44eb96cf935a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
