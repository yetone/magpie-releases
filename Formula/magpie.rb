class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.922/magpie-cli-darwin-arm64"
      sha256 "17203fb788339b27698d796a004480251e242a69b652e7ae3cf40e367dd2a765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.922/magpie-cli-darwin-amd64"
      sha256 "207641166b205890277c219df0c191b7e213f6ec3f8992265552954a7aeb2f08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.922/magpie-cli-linux-arm64"
      sha256 "475ab472bb1a4a552b0c2c0bbc5df836e04f857cbeee3873dc95320f12b74855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.922/magpie-cli-linux-amd64"
      sha256 "3b1363108a415dfee769039748121df6e876938d8f87e42f7e5cf2d9c06b19dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
