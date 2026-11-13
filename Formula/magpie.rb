class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3966/magpie-cli-darwin-arm64"
      sha256 "2c1cf29bf88e25f36f52917f6312a6a1ce0ed8fa9578c12707985bcf5cb6eeae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3966/magpie-cli-darwin-amd64"
      sha256 "472972badb699eae7dfcd0520a64c3003e0ccb3f3438e0da55950a4b5426e5bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3966/magpie-cli-linux-arm64"
      sha256 "ac6922666713ed9ce24e9dcac32bff64a5490a276cd584f61e92945a8241632d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3966/magpie-cli-linux-amd64"
      sha256 "8a6f3e8ddb20b7923246cbb26f7b5fd452b7feda7bc27e31bacd80cadb517800"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
