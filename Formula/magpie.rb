class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1976/magpie-cli-darwin-arm64"
      sha256 "47f0fc1ea96d06417504cd6e96a138c5e04cc9106cff557b9664518748725f2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1976/magpie-cli-darwin-amd64"
      sha256 "1f4d86a567d3d95a5c4c36b1d028a36147ced4f2b56b174d2399c5bc81cfbbd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1976/magpie-cli-linux-arm64"
      sha256 "b8b07d6a4c875fa43d34f59afc19f265e2a05880942c7f8e6234527c5a624f23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1976/magpie-cli-linux-amd64"
      sha256 "da855e2e8f240c96680dc5e44a370dda54f93cffd508ce1ef3da94c30504e848"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
