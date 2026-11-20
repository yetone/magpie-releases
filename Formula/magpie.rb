class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4617/magpie-cli-darwin-arm64"
      sha256 "1439ffce4a6f79345f732721bf357f893e2ba5e2910798b444200b59d2b3be71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4617/magpie-cli-darwin-amd64"
      sha256 "b6866f556ba86778f39cc72d37f64271544e683e8750b3f396e53e062da2bf41"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4617/magpie-cli-linux-arm64"
      sha256 "36e36c413880027da2915e883801052c90be4d93b175e1235baf675618dbac27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4617/magpie-cli-linux-amd64"
      sha256 "e17c9b46f609d4a632471e964cda25f59b3512ea81560e7a73c62ace7f03e093"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
