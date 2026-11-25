class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4784/magpie-cli-darwin-arm64"
      sha256 "23cdd5fb2f98f850018d539ded3b7bb0ad7d02fc6c704e073846894c24f4ab6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4784/magpie-cli-darwin-amd64"
      sha256 "14adb5b29d3954625884bd751035928756a774c750df2b8967568e7dcb27cec9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4784/magpie-cli-linux-arm64"
      sha256 "08211d086304850b548460e3fcd60e73e057e045f80c85f0528a5199d29a33db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4784/magpie-cli-linux-amd64"
      sha256 "9a540085ca05daa3b4646018cc343566f3ccb3dedd417dae709eb95025f0897b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
