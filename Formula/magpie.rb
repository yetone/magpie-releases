class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2750/magpie-cli-darwin-arm64"
      sha256 "2c8be36d893b039b5d1f27864615da67edd9533e518556a9a5fab6d270c601cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2750/magpie-cli-darwin-amd64"
      sha256 "1673737753e98347741115f559fc0de1b515191967af0037e43c83ede94231e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2750/magpie-cli-linux-arm64"
      sha256 "1e8c4f6e6381e879421d8dfb9abcb1435aaf33e3cfbfad6be9e7db2aa335adab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2750/magpie-cli-linux-amd64"
      sha256 "f414ac1f2efb33b98a5ac63d7c37118a4bd99e76e4afb2249589925806e63203"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
