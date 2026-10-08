class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1113/magpie-cli-darwin-arm64"
      sha256 "89a9b23b3a4101e1c78ebf78b13c6e6585f5b0963838a060b027638233204573"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1113/magpie-cli-darwin-amd64"
      sha256 "045e3cafd2ea527704b184d69553666788d21e90488195b6946f21c1d8f390a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1113/magpie-cli-linux-arm64"
      sha256 "24a7ad5f7b38a4351b90016ccc840c11177d98e5bf7ec5ecf0e0b0f61e140dfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1113/magpie-cli-linux-amd64"
      sha256 "70e49d81a301d729b010dfafd3c37e0cd1fdd5215318d961b70b817084de829a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
