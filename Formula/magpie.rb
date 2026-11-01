class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2517/magpie-cli-darwin-arm64"
      sha256 "cac1edf863593e5cdaa49963ead55797231592fbf74ad27b6f23fcd028c9eeb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2517/magpie-cli-darwin-amd64"
      sha256 "9f15450820b4c592419243d608ac3969c020d64a2a2a82b487f8d8ea1c25e726"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2517/magpie-cli-linux-arm64"
      sha256 "ea5ee72ffd6f89fc1da49d2eb64fb95f68c681fd013efe823814c1cd6a0983c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2517/magpie-cli-linux-amd64"
      sha256 "3a0b16195788216f2628b56d7a488aadc1b212c5365709bc31f1f07fe29a0efe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
