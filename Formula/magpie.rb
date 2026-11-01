class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2519/magpie-cli-darwin-arm64"
      sha256 "f87f11cbe944956b749d0280bb5b206f48d5c3ddba09af455687506ab27503f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2519/magpie-cli-darwin-amd64"
      sha256 "59113586bb8fe12210891c024f1eb5539e2db9a2f91b798d42188542f59c4cf0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2519/magpie-cli-linux-arm64"
      sha256 "4930a304483e925f41666c1bd890ae1207d5782a635d3c96e96b2d2dcc13d041"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2519/magpie-cli-linux-amd64"
      sha256 "918d26397c405b7d8731f8eb3756657e04e8180d3553019081b42385f2c2b080"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
