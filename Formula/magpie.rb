class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2776/magpie-cli-darwin-arm64"
      sha256 "35069484db29a2d5771462a120a52ce9134cea7af400a7e3651dd37531ff02f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2776/magpie-cli-darwin-amd64"
      sha256 "4d29ff9036437af58efd6e900d2ccec400dbd0bcdc834feb6f3ca8a05a281c04"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2776/magpie-cli-linux-arm64"
      sha256 "b48e35b89a89681330d8b7954c584b9e30a247c13068688775b2759e2efc9478"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2776/magpie-cli-linux-amd64"
      sha256 "522a4ff86376ccc7ec238fae47fd54ea547be71dd5ce591da6ae7fbf0a82d865"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
