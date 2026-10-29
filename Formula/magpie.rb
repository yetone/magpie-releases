class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1989/magpie-cli-darwin-arm64"
      sha256 "ac7d1287fa112a4f72760d0a7329faed266e15089767d01e379594dddb00a27d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1989/magpie-cli-darwin-amd64"
      sha256 "b3c7e41fd0765b57fcb30be39d44e58552aa33a30aaebaa986d040648de6ce8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1989/magpie-cli-linux-arm64"
      sha256 "01acb8fd7e3997d1cec29e35aba9a4c80f93a34b564d8743e210393da4551991"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1989/magpie-cli-linux-amd64"
      sha256 "d80cd757e2a7ab789e08b3d9d862a877e05d0a6697979bfecc134f0ae6071852"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
