class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1109/magpie-cli-darwin-arm64"
      sha256 "d474ae28223c1920ec5a191c11e3e8ba7255d363676a740fb1935e8de5418abe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1109/magpie-cli-darwin-amd64"
      sha256 "17bddda48d8e90f2deada99a4c8759feda2d3640435807f86e228b9dfc87ab53"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1109/magpie-cli-linux-arm64"
      sha256 "e325957c2a2fe95d85663557482052910149dc5dc3cab916adb9f3798acf42c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1109/magpie-cli-linux-amd64"
      sha256 "b8554e4a47be1f174da44f7a497e4e842bf67b85b599086a4ebb4732d8f77398"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
