class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4965/magpie-cli-darwin-arm64"
      sha256 "bf261b8dbbed4fd865a2be8d2a856d53f84bdc3db93162b96e5f0cfb15f41d18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4965/magpie-cli-darwin-amd64"
      sha256 "954a4c10851651b8fb227c1e499c287161bd7910e944ea4838235af368ad4aae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4965/magpie-cli-linux-arm64"
      sha256 "c103d209f0530815ce4419d5674f0a65ffafa85ce234183fcd105d19c1de2cff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4965/magpie-cli-linux-amd64"
      sha256 "057a86cf8635b355b6ef051b87937093c103b1910f386cdcf8d98d423386aff8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
