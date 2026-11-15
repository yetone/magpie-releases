class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4256/magpie-cli-darwin-arm64"
      sha256 "c010b6dffceabf46df96ca9e890c7a448af34c79cb4db41a3964965d083c13d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4256/magpie-cli-darwin-amd64"
      sha256 "b9281858250f1a5c495e615c631d1279e8984d86160997da3b8cda29dd198a2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4256/magpie-cli-linux-arm64"
      sha256 "12c6adb5f5db5c0a14127478ebc1fb18f1205b2c1d597539fbaa586a0a6cf572"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4256/magpie-cli-linux-amd64"
      sha256 "e44a0fdc35fb80412170f8959639e06618947a47bc214e5f52031f0c22b6f85c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
