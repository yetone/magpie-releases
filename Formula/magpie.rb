class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4621/magpie-cli-darwin-arm64"
      sha256 "98ab9292254c7119ddd5559a0277a0715bb2fd074c8aaea0a26cf50fdcb8b06f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4621/magpie-cli-darwin-amd64"
      sha256 "f5e5d3f472a7ca2d6d9c70e3922d4b677fd20e91f51ec7e1987926fdb033a65f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4621/magpie-cli-linux-arm64"
      sha256 "17eb933c4016660cf1b11b3bc46e13e76b350b03266cedd382248045e811cbba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4621/magpie-cli-linux-amd64"
      sha256 "e7e60c8ac182af67dc0da770a77b665c9712405f0ab4d1a1ec76bcecdff682ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
