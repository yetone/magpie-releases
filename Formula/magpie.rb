class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3850/magpie-cli-darwin-arm64"
      sha256 "e2d3ed923c6ccb8b18b6651939d4e0bc2a6980031531e849dffd8df9e468b018"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3850/magpie-cli-darwin-amd64"
      sha256 "3093c6308682d9cfe882a824e300dae459570b8e5828b3808cd0f2ea6b30961e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3850/magpie-cli-linux-arm64"
      sha256 "08c7e47b490a72deb03540301b0566d877258aae9115671e1600173c5695963e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3850/magpie-cli-linux-amd64"
      sha256 "ade0b40c34667db7980bc4be668c6afae1d6bacbfe7e363d37babcb3f693ba59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
