class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3116/magpie-cli-darwin-arm64"
      sha256 "cfd77f25aecf44e0a35d554a1c38b38a97a4fa2472592724e8797f768a87dbe4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3116/magpie-cli-darwin-amd64"
      sha256 "19c45a25ffa4804ce9c1919fdd0dd959cd41e4fa4aff15e9c4534c52a030143c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3116/magpie-cli-linux-arm64"
      sha256 "88d0f554211e4ac8a5bc895f666e31b452259f85ff55e5633362b564f995c8f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3116/magpie-cli-linux-amd64"
      sha256 "8ff7589f4545ade73a71cb6b65b2cdf9f37cd8957d1ffb8b8bfae276b86d4967"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
