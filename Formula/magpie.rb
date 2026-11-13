class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4074/magpie-cli-darwin-arm64"
      sha256 "a8e3eaf31c8d41c44687c0ec7c81a5aef5efbbaa8e62c092aabaec45e68d895b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4074/magpie-cli-darwin-amd64"
      sha256 "a0a2aedbde45ba8dc5c480220943924d95207c32121409a0ad897777c3a2132f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4074/magpie-cli-linux-arm64"
      sha256 "43eb40f8cfab78a4adafc70299ae2a8906b02e8f4fa2f7ddcaa86531e2f0a021"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4074/magpie-cli-linux-amd64"
      sha256 "62899a958ee882cdaff70ec9e711796d97ab45d4c73389c0d85658266b21a8fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
