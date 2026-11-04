class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2909/magpie-cli-darwin-arm64"
      sha256 "52e05f43067b46374da9438c6ad38a2c914f0271e3498f835b871326a00c83a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2909/magpie-cli-darwin-amd64"
      sha256 "754d2a8c2b991c4f40c9f11925859f3b9cd5254296665780c5e80c1e853dfa1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2909/magpie-cli-linux-arm64"
      sha256 "64d1f225a0a92b600e68ab3a56e8aed15848b7de434057b2de4b4e5efc08da29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2909/magpie-cli-linux-amd64"
      sha256 "caf79888c6d7224ca3d4c7683eb22ef4fccfc721f06223265524850f09b2d85b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
