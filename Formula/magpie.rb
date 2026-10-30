class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2182/magpie-cli-darwin-arm64"
      sha256 "c92f638560bfe6827839aadd284ec042579ae9f0cd739fa3dbaad300dd8c8c66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2182/magpie-cli-darwin-amd64"
      sha256 "3c015877dfd7c897ce211fd825425548f8c7f6bf843b1ee6dad03461678c5eeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2182/magpie-cli-linux-arm64"
      sha256 "7015c410cd35136aa094ea6d05c1baca1639f9d0f3657af209869216ade65a86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2182/magpie-cli-linux-amd64"
      sha256 "d3ac7ccba7601d4857eb7cf170aebea0f3ae9be5d907f0ec54380bf4789da8ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
