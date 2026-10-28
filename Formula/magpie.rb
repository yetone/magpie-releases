class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1888/magpie-cli-darwin-arm64"
      sha256 "1a23e4917c2cd8da46d066d7791d6751145bc2b174afbe92c930148104de14f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1888/magpie-cli-darwin-amd64"
      sha256 "2843a058763c70907b3efaf6054437fe2bcf0564364623b962f56847086654ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1888/magpie-cli-linux-arm64"
      sha256 "d0d367eb1837c07c39cc3cb530828b854f4a9f870bea42ea6dc9f78e9f6c40c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1888/magpie-cli-linux-amd64"
      sha256 "ccf356f08571827eb4ecf2f34c9d05fdf2db502426651a387d165fc66c09e79c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
