class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1986/magpie-cli-darwin-arm64"
      sha256 "79e326cbc83a070d5111259d18ff6a8cc3f42646cc7e2a521de6d345d19293a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1986/magpie-cli-darwin-amd64"
      sha256 "0a1fac96e22e699dc09e5f3b297535960c37847bbc52701e8722c7de196f539c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1986/magpie-cli-linux-arm64"
      sha256 "24d23f739c9b8877def948a1c6bc1ff26605c0d654b3eae7e8e8647f75134440"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1986/magpie-cli-linux-amd64"
      sha256 "f5408e872a59c040bad84c3dd32dd633abe9169e52a08662641885cdbf498370"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
