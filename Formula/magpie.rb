class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3632/magpie-cli-darwin-arm64"
      sha256 "b6b3ec5c8588d9be30a4012759173727ef94ca5cb0ba2a7caf3cefa38b0df7aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3632/magpie-cli-darwin-amd64"
      sha256 "6e9e9aafcf7f6cb88e47f3febba941afd9e4a07fc6056e0e9dfce74d829b0453"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3632/magpie-cli-linux-arm64"
      sha256 "3b9bc133ad501984a6ffbc50bed1b0b069121e1a080f057865a9796166672125"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3632/magpie-cli-linux-amd64"
      sha256 "4ef87ec7cfaf5c84b981ed02e24c348dab256cf151ab2f1d9699fef1c7bc1c83"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
