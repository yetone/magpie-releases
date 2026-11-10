class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3563/magpie-cli-darwin-arm64"
      sha256 "e4808b369d699bc01e1935b59e38e118aff17a3ac009caa4d158721a6ee32740"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3563/magpie-cli-darwin-amd64"
      sha256 "704d52f5d7c39805caf16c5f569d1df5830765e7a33e510eab51568b76585fd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3563/magpie-cli-linux-arm64"
      sha256 "9389b13378d7f3eb5e3d2d2ff745cb1853487afa3e66a6cf2d2e3149a50cfb3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3563/magpie-cli-linux-amd64"
      sha256 "cea6dcc99c5b463161410959d60f9b120abce5d503c9fb527a484ee740d63acb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
