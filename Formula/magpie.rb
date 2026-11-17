class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4347/magpie-cli-darwin-arm64"
      sha256 "18ae14fa409a47860a64e275f4305f446159a5cba173122c1fd2881eee41e60f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4347/magpie-cli-darwin-amd64"
      sha256 "2176c3ea41c844e5a0d013e4aec3e2311dc05024f88d98ef2aa5730328956114"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4347/magpie-cli-linux-arm64"
      sha256 "004d0487528fc97dde6fa42614a6d7779b3d311897703dfafd1cecfc5fabf19e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4347/magpie-cli-linux-amd64"
      sha256 "398d989d258e46c22296e4cb9a7d75ba9e2aba037836f6a7dff6d44174051a60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
