class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2249/magpie-cli-darwin-arm64"
      sha256 "53afc73dffa67d41ed5ef74280929555813b12bd04ecc5fd2f8912c8e0ffe6eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2249/magpie-cli-darwin-amd64"
      sha256 "aa0a2b83c5971f7d32f2d5d7b51887f08a7c88c7a6b9bad086195a1ff421ae9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2249/magpie-cli-linux-arm64"
      sha256 "ed53284a7b5fa196576cbf0e601a9154cc49ceefd3d1549a7b7bf261d08f672f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2249/magpie-cli-linux-amd64"
      sha256 "8de958c818a1f5682b4ad9d2803f7fcfdec86e30ae9882bd190040bc14d0a080"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
