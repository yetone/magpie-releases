class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2581/magpie-cli-darwin-arm64"
      sha256 "96fdd1da0a9b538d3a01190428313859bfca007b58501af8704e3a130fe33e79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2581/magpie-cli-darwin-amd64"
      sha256 "e593f0670b5a6ef167542a3d1c46c4c9b45dbb72d90605c01ff85f0e2a0edfe9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2581/magpie-cli-linux-arm64"
      sha256 "ef0e2f820f687615d71b5f22c7d33b30c24ae5e35c2434a1f3a9c28e9aff63c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2581/magpie-cli-linux-amd64"
      sha256 "7c24a4ff3df0fd985cdc043be1a8bb4ea8001c12450b2e0730d57da477d5c422"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
