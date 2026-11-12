class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3910/magpie-cli-darwin-arm64"
      sha256 "a597a971bbbc872b175de518fa42815605d56901c3ac55708417c8266a02d364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3910/magpie-cli-darwin-amd64"
      sha256 "72e47543489e9a4babb5c612a7157cdc6f885e1f89e38efab9708cd1b6b666b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3910/magpie-cli-linux-arm64"
      sha256 "f7ef1f6148ecf1e4054483a25096231b01600ba64f67a551a70c0515e07b658a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3910/magpie-cli-linux-amd64"
      sha256 "0bca8bb371d79612be241d4d7653d498630e4d406bc2f18edac68dcdac999b4b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
