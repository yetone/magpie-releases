class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2709/magpie-cli-darwin-arm64"
      sha256 "40d9e7fb92d6d4a66c8d19c43108c41d5d5126e4d0e43ebd10d89fe01a407718"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2709/magpie-cli-darwin-amd64"
      sha256 "65f394706f95a641dbba66cf51cd1e13b16c4b86cd6a4375f206c489aea7463a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2709/magpie-cli-linux-arm64"
      sha256 "fea412be10e2a829761b72da4112dd658149b545a0dfbdee4ed7ce3026eeb0ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2709/magpie-cli-linux-amd64"
      sha256 "e05684d3ea8b09ec093b08b4c1dd664665de00980d895bb518bd9849b8722d3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
