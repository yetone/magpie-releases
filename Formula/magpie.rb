class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4542/magpie-cli-darwin-arm64"
      sha256 "dc5b48a558bfd9c27d0fde761ed9340f290dca091460d5c5b80dc32d80eff64f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4542/magpie-cli-darwin-amd64"
      sha256 "b555cdcaf620ceade5136d047bcffb9f7097a43d8d935325f5dbb30fd8057811"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4542/magpie-cli-linux-arm64"
      sha256 "5ef01537640d4cbf08bbcb80852af4f2a639a52e398a356cfac5cdc356fac3c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4542/magpie-cli-linux-amd64"
      sha256 "7481809fd27c9ade36d72d8acef574cd1b2b0a698c892dfd124f6901496d2c6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
