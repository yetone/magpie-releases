class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4425/magpie-cli-darwin-arm64"
      sha256 "e78f4f85848c1f5d5ac0960a14979c1782d872537ef6705c70988a2bc717ef28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4425/magpie-cli-darwin-amd64"
      sha256 "457565d0be92310177f9b1386f2d92c6dbd5b3d5eef4c7a98d747a07bb691bbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4425/magpie-cli-linux-arm64"
      sha256 "c77c0d13084faa06346d67fe10dbffded23963d2ee57f17dcd03d4c86441d858"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4425/magpie-cli-linux-amd64"
      sha256 "463630c91140d8eaa1b9719f92996ca00e13ecb1f9a88d56549ce6635f1f8ffc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
