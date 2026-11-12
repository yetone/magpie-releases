class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3882/magpie-cli-darwin-arm64"
      sha256 "999b234e9ae53cdb1aa9fb0b3bf79adb258e8b3a1e7c02d2c0b4f38dbdd3da9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3882/magpie-cli-darwin-amd64"
      sha256 "70169ac14425c6eff87ff29a794964e0aefc340fd32f2071b423744aacb2c179"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3882/magpie-cli-linux-arm64"
      sha256 "38bdce5dfa06ad7b4863597c73b4933fec7643617891ae99b001309031c82b6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3882/magpie-cli-linux-amd64"
      sha256 "8e5bd0e076853507b3bed027667f7a1f1e3885934238f295f2c528f261554dfb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
