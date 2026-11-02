class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2729/magpie-cli-darwin-arm64"
      sha256 "29fd561634215f8509c1478864ebac93bc33e8696fbdf4417ac8c6ad108d2392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2729/magpie-cli-darwin-amd64"
      sha256 "b68f799b8f0eb1b99fa2d3fd5cf3c9eb301c061bb76030227b8e142cc674d9d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2729/magpie-cli-linux-arm64"
      sha256 "9c5b88019e32fb82c34f29ae8a7b4564ff705afa185a7d468bb5ec3380cbac99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2729/magpie-cli-linux-amd64"
      sha256 "15f66f4bd2d2c8d335c33bb7250f3eabf2c05f6fa5a7f093b360c6e40f2c1bad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
