class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3964/magpie-cli-darwin-arm64"
      sha256 "daaa8f0b8100f59676d499662f6fe9e3e6498f9f06ca48ee1b70c08741f516a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3964/magpie-cli-darwin-amd64"
      sha256 "c3fa76cd1ff5992e9fe87f7fc28b79f4410444c823b938e4fce76b9c269aff2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3964/magpie-cli-linux-arm64"
      sha256 "ee31c33d3bc7b8b8110f6db1ec36c5c0376014534a21ab173df9403ca366451d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3964/magpie-cli-linux-amd64"
      sha256 "e222b8c0b0b40f83a2f4df848ef44ae7ce210688a60495705114cf3dba80c051"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
