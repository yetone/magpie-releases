class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2900/magpie-cli-darwin-arm64"
      sha256 "3e7f1c064f2037d3968df6ef33dadf14ec85459970379aad15ba8d4ab272f7ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2900/magpie-cli-darwin-amd64"
      sha256 "68da9f736247c7ab48caede88fe9d96494ad4a99473be7c4ee4b04f150428f98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2900/magpie-cli-linux-arm64"
      sha256 "6c6fec3d9994e9f3b1607c29fdd9e53612d2e5b3401317f8ff7a7d3c1b053f4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2900/magpie-cli-linux-amd64"
      sha256 "ba4a33809ec3be637eb9ddbc547771daf9871ab79a8ad884931acdda76f130ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
