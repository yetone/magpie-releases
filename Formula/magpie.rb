class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1127/magpie-cli-darwin-arm64"
      sha256 "9474f52454ebddbe62f71a0e7f1bf71ddedf11ac0500652ca758cd05a67b45df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1127/magpie-cli-darwin-amd64"
      sha256 "c55d72c8c0066c9bf87169281fcfa3a31d4dfc6ac37e4aaf069b158346b033c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1127/magpie-cli-linux-arm64"
      sha256 "3e0976a934cf118c2782bcccf283508aad724f7edab6aa0cbb55982db662c1a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1127/magpie-cli-linux-amd64"
      sha256 "c58be7ed9dbaa0e45555d6a386fe86250fa30ee6740843db289536ab4217e8b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
