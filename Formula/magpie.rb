class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3198/magpie-cli-darwin-arm64"
      sha256 "f86da0ea6e7ad6778cf3e85bddea74fc49c7e36149851d55dc11cc8bdc79b9a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3198/magpie-cli-darwin-amd64"
      sha256 "88871478aa05398473674884f07a31f153d14fe4fd0f6986117b07a0889746a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3198/magpie-cli-linux-arm64"
      sha256 "7b0c024b0f0905c99cf5ee61617b9b31b3bfefb07245716b51b29aa82b8679fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3198/magpie-cli-linux-amd64"
      sha256 "1cf8f01c3e7c4e602fb091c6b4b3eaa50eea921649a637a6548152e04c6c195c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
