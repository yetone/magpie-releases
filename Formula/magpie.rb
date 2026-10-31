class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2375/magpie-cli-darwin-arm64"
      sha256 "1f621c7916024adbafef1016cfbe4a8a3864060474d077b7a6762dee5ead3db3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2375/magpie-cli-darwin-amd64"
      sha256 "2bf4c967c2f294de39cbcf6d0e8bb85dc5e1c22fb0e7bf62b04ab54fd33e8364"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2375/magpie-cli-linux-arm64"
      sha256 "d825c155c2f2ad98bac73edfec761825f07aa8eb46beda50a8f892fe22023b45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2375/magpie-cli-linux-amd64"
      sha256 "ee3b94f16443baa13aee118b5e3b32e0c76bf873381ab93dfe40fa244688fb17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
