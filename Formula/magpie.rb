class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.130/magpie-cli-darwin-arm64"
      sha256 "a7d2da9753dc5b0ad7cf3a68242853e9e8a977443b367368b49acbdd0d6d16ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.130/magpie-cli-darwin-amd64"
      sha256 "195d802d59e303f361ccf6cc2f7d8e9749335a6eec8cb7ca5d44f2b39daa4657"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.130/magpie-cli-linux-arm64"
      sha256 "660466875e433dbf965aa78eb38a43ea8aae383aa343017a01b8b78d49116bf0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.130/magpie-cli-linux-amd64"
      sha256 "196f5a098e805e5c2eef4b454a6a0bcedce9ba0f90acd46eda3ed1c87837b047"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
