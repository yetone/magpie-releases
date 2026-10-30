class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2121/magpie-cli-darwin-arm64"
      sha256 "dc44ffc3168ff2c43384d02bcfecb30d93a355c98c22037ab9f8c22f10c9edb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2121/magpie-cli-darwin-amd64"
      sha256 "a32591157cc099f1e19490d057a69ba720d32a684c92794bab8f34d2a43642b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2121/magpie-cli-linux-arm64"
      sha256 "6f0e41faba3d06b6e1717a06cad749fa9eac0938c8decd6eb633f89a12993b4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2121/magpie-cli-linux-amd64"
      sha256 "5c8fa903549ef277280080e95712cc5638c188860fe7b05b3ffd230b549a5ed9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
