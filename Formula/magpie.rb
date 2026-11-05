class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3067/magpie-cli-darwin-arm64"
      sha256 "97267ddac3992e5c65d35df908eb7d256da5b7643733b821a1d2f089082059c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3067/magpie-cli-darwin-amd64"
      sha256 "929d06986907260c3d2093fca2061cb610b6a1a9118b6b4dfb4324d8a07d3bfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3067/magpie-cli-linux-arm64"
      sha256 "07ee102771901b34c1f2bef0e2652326905aaf64e3afe064fa59af24fafa3d2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3067/magpie-cli-linux-amd64"
      sha256 "4cdf35ba35a119aa99bb1e226ca27e88fa93aac7031cc48201f83ee9c2b7636c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
