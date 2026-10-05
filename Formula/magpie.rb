class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1012/magpie-cli-darwin-arm64"
      sha256 "41c53873e4380ebdfa4e055b925c95cd0ceb2d7180327ba6b0a6a1e52834d209"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1012/magpie-cli-darwin-amd64"
      sha256 "827a53fb1f87e8aa3b18bc506a6273a1e53cf8e098cefa820a2250bd01352627"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1012/magpie-cli-linux-arm64"
      sha256 "5eb1d975e471c82488da4d1cb5403ec8cb7ac97407a170d7ca39847c4517eeca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1012/magpie-cli-linux-amd64"
      sha256 "d3202c66945eecb33c1547043d5793d478a95e90f7c1f65e686d45c85a0424ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
