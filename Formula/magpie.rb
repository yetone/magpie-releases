class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2013/magpie-cli-darwin-arm64"
      sha256 "057e674aa06755238dd24e6c3542ebde5f27b460b5663b24673f7214c12093fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2013/magpie-cli-darwin-amd64"
      sha256 "45ceff707bb8c5e11ad161fadae44ca832b5b8adf52bf913e0be1d5bee6575c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2013/magpie-cli-linux-arm64"
      sha256 "162288be5362c43332ff937fb3f55fe392c610b2d35292bd00c79a52bc37ab0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2013/magpie-cli-linux-amd64"
      sha256 "bd600c534bd66b37827d150405372921814ae233bb8ae06740b0330886eca32d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
