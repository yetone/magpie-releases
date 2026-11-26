class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4828/magpie-cli-darwin-arm64"
      sha256 "583f37a7a96d02e6897a09a65dc6a30fe7855486f5274cd1bf1f5f7b05e9625d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4828/magpie-cli-darwin-amd64"
      sha256 "8a5cbc14c69685bf824755bd209f007e68c55bff39bc195648874511bc95ea80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4828/magpie-cli-linux-arm64"
      sha256 "2892a7cdddfdc1ac9807bf247c1b71523bafb1e3d1fbe5822fdb906d0e29a080"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4828/magpie-cli-linux-amd64"
      sha256 "23d8a92f8affb78cbf3925ca0fba379d291a11c3a9572355a9dc4c78a02cd2de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
