class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2872/magpie-cli-darwin-arm64"
      sha256 "619902798d2b21f15010b2987a1a90837d582473fe31f0ce4fd17c6b5ad4ac0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2872/magpie-cli-darwin-amd64"
      sha256 "251ffc5844f06c7fef81620a6362c27c908546bd62b646aff6e536635c420232"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2872/magpie-cli-linux-arm64"
      sha256 "4c6ba86ca9bfd160c414671820ebea1d4ba666d7ea6397cd71c7601c85195f18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2872/magpie-cli-linux-amd64"
      sha256 "5a26d5a5dc94cfc42c4254e004ff0eb5b1e23c0cab5820808586a2a28e1d4fb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
