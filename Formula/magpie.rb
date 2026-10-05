class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1072/magpie-cli-darwin-arm64"
      sha256 "7d497cb8f467b5691371cc7a66e764364f3f964fa753e11e5353e457f736e0b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1072/magpie-cli-darwin-amd64"
      sha256 "e4b9d37f3524069c979611e1bd801634032e1d863c64ba417295a7f3577a22d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1072/magpie-cli-linux-arm64"
      sha256 "a6f00b4a8f482412048b8d36bd2c9f8065cb2b6beea44a6421505fdc1912ca13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1072/magpie-cli-linux-amd64"
      sha256 "53064f005f9e00470ff4e01825a4a7afd2ad97b186524160cf766e137144396a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
