class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1843/magpie-cli-darwin-arm64"
      sha256 "1d8139c47260d1a4735b970e1f41f4fd30f2027974d8bb8029d82c42b56be50b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1843/magpie-cli-darwin-amd64"
      sha256 "cae5391fe0dc6af865c824f7cccf22f12e1c1cb66aecdfa62f5bf29a8c50a870"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1843/magpie-cli-linux-arm64"
      sha256 "1c60986796e3b139665219258b75d44d9587b6ef271457cced5ab1049c9da447"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1843/magpie-cli-linux-amd64"
      sha256 "47f642af5a969f890d8c8ee26f9b46588dd1e68981530011020b33715712df66"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
