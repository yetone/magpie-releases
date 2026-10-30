class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2261/magpie-cli-darwin-arm64"
      sha256 "ecd7583b228dff0bffff0ed2e1d614692dfe1ca9aef98a080f099a0fd1c236bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2261/magpie-cli-darwin-amd64"
      sha256 "43eddb2877f05e7c3bb492a6415a7025373a2bc9e946e0311933dacb153b57c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2261/magpie-cli-linux-arm64"
      sha256 "2b80f65d5a6d3a79e80e733f950b09c6d72dcbb0b70a150c6f23f4ed4d7d47a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2261/magpie-cli-linux-amd64"
      sha256 "bdd9e59bafeb0ad67109e0d6d1133942b0d4d5155bf0e76fd81ba905fe1a28bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
