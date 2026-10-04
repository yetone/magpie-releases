class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.891/magpie-cli-darwin-arm64"
      sha256 "98d7678a81e0b88821dd95fbf74567b59c0d05df6bf098286b65da1ad9f59710"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.891/magpie-cli-darwin-amd64"
      sha256 "d63de784353f18db205e7ef1eb2f893e45f9fc1163b3b718550e88ee9e8360e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.891/magpie-cli-linux-arm64"
      sha256 "d8d4a1fae705529a0be37e9085ee1c47287620f2fb20425f1537ce13c1df8b76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.891/magpie-cli-linux-amd64"
      sha256 "17fefd25f04ea4971ae7480e2aec7616ed161ab2e89b025f0b3760e419d4dcd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
