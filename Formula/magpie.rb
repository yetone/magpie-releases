class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4867/magpie-cli-darwin-arm64"
      sha256 "75f642367a8415c7e2147a2b26aabba426c6239faf7acb9bce56079ca21cd087"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4867/magpie-cli-darwin-amd64"
      sha256 "1f1e811a464576b8a75ceb2ef396d400c2919716303a0b98d4a25e3cd5916603"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4867/magpie-cli-linux-arm64"
      sha256 "eccaa5fc4a69693ec9411b3623388ca74336e35386ce79e9deeabe80841b8e6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4867/magpie-cli-linux-amd64"
      sha256 "d60d412b7598c6926d1ba2090eeee50ed2f7d1f8ce88e7ec64143ebf30b41498"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
