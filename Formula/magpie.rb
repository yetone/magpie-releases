class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2477/magpie-cli-darwin-arm64"
      sha256 "1e6032e0b7fe1086913ec4c568c22d276ddef1d95129ac980dbf13da99fc1569"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2477/magpie-cli-darwin-amd64"
      sha256 "6c1b52f12b72e607b304e159f79db2c29c740d92ba3ea497e3b9a6348ee52df4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2477/magpie-cli-linux-arm64"
      sha256 "32343473413f4d14c172e892cbc7a940402ca53fd85a43dbe1568221d24ab4fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2477/magpie-cli-linux-amd64"
      sha256 "190c6329aa56afeaf28b8b83e8e468dbbcc4ff4bcf3d898562ce810d8054ef52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
