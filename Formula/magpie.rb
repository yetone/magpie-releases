class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4616/magpie-cli-darwin-arm64"
      sha256 "b3bede952796601c16c13477fcbf6366dfb81283febea14c0f5b2cc2d6133d17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4616/magpie-cli-darwin-amd64"
      sha256 "d571abd5f3fdbd3688ee078576c8ac32dc906124eb46eba814396d5a02a54b45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4616/magpie-cli-linux-arm64"
      sha256 "eaaef13255c3e5a31174ef498331638fe6bd2e74c1ff712b16560b522a68ca9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4616/magpie-cli-linux-amd64"
      sha256 "b0b6ea099dd246b489010e732c7b78984517844a201b78502584344eb97781e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
