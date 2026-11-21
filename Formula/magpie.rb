class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4642/magpie-cli-darwin-arm64"
      sha256 "f72f572310e6a2407ad04d9a72d30a3da3b7463abed995e72d0fd7015ba6bd28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4642/magpie-cli-darwin-amd64"
      sha256 "d9c2ffdfeea39db16aa5fab9cb72b0850b49dfddb68d14123028d729fb339166"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4642/magpie-cli-linux-arm64"
      sha256 "2e8cb17ac30b1067e032603309563fd699b19d6b8f9a20c683ecb940616b2559"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4642/magpie-cli-linux-amd64"
      sha256 "cd7a953d4ddecd2c48dd55eed75f138299b9ac3012163c2afbe9bf9807bcde90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
