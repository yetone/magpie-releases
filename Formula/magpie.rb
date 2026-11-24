class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4772/magpie-cli-darwin-arm64"
      sha256 "0c8d9851b4864a5a4993cc34ce3fe791504304f59184b37b2214079e19822895"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4772/magpie-cli-darwin-amd64"
      sha256 "bb3e95aa2770b624ff684baec16470f70589ca014adef13a376f058a8387cfcc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4772/magpie-cli-linux-arm64"
      sha256 "21901401fc85571e12e181f927eca63ae80362fa8c962d50f1a617b27ef78222"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4772/magpie-cli-linux-amd64"
      sha256 "d0f38dc12dd78365108f77a9661fa01e4c68ce828a0082a206c968f48163d5d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
