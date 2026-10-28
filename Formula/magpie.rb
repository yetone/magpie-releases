class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1879/magpie-cli-darwin-arm64"
      sha256 "60c37ae0fb58be99099388bcd40babe0b28f846df8d106c985a37811f6c69d22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1879/magpie-cli-darwin-amd64"
      sha256 "6075ba45f446b7da035875de63668ce42151ed186aa88417ed8ad71ee81f5da8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1879/magpie-cli-linux-arm64"
      sha256 "95cf650daa9991041ddc00b197ab10a5af97f4cfc53fa5a8200f0919fc228d46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1879/magpie-cli-linux-amd64"
      sha256 "762b6bd2a2307fff06743bc9daf1a46c8585dca2e57539f2e34ac64273b500be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
