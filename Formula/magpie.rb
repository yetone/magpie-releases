class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2728/magpie-cli-darwin-arm64"
      sha256 "dd38b95a482aca887db9a93ee2466b03c341e42f9604e7504a72d8a1b26c176f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2728/magpie-cli-darwin-amd64"
      sha256 "0fbbb8dbbaa0540e833744533b845e307fdf0b863543edf4171861721959eb33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2728/magpie-cli-linux-arm64"
      sha256 "f5e217cbb5b4f00a6815566fa63e1b28e04c945a13bd2ee3f4d8824e4605fae4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2728/magpie-cli-linux-amd64"
      sha256 "ebcbeccfc3492f07cb830431f17bdf83e6267a8bd95273eee1c868b1dde65dfc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
