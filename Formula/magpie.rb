class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4482/magpie-cli-darwin-arm64"
      sha256 "7bc6f32c5ccd0950b61c77a78b3e2423294601111fa13ab34e96b44a786fca6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4482/magpie-cli-darwin-amd64"
      sha256 "2a9ab801194c0e6fb7cda8e4bdf834420bf581622f3cca0d92c417f95120b5bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4482/magpie-cli-linux-arm64"
      sha256 "0bf6839f2aa3d6cfc74ec6410489c16e747872ee3954873ab870030a95793e26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4482/magpie-cli-linux-amd64"
      sha256 "604db2c4545dde5e0a651f6dddc973f0ff04ceb5806b9f3d1a1115a3379981ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
