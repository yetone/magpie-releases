class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2610/magpie-cli-darwin-arm64"
      sha256 "ab427991a998d8aaacf994f498f8328dece96e27a723d1de30de10976770d171"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2610/magpie-cli-darwin-amd64"
      sha256 "d6fe0a610adaca85b585cd3f2f71bb36df0ff25fc54f29c52fa0c5f3de6bbd89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2610/magpie-cli-linux-arm64"
      sha256 "26a0f4831cc9b1cbe0db38b4679e21cc9dffde74704e8a127f3bd459d911a5df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2610/magpie-cli-linux-amd64"
      sha256 "7611bc0af9e93d7ee0e5cbb22622e4396f65c3e61ab9aff8d95cffb5d995563c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
