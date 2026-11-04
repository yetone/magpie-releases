class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2965/magpie-cli-darwin-arm64"
      sha256 "ecb7c14e3d55d3422238c739360a2aa33d244a54df9d08dc5dd9ffd7ba9ebcef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2965/magpie-cli-darwin-amd64"
      sha256 "248fda0c75665450749b8446b59cc8ac04fb510be903aaa5d5c1ebb52a50f034"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2965/magpie-cli-linux-arm64"
      sha256 "2222b6fcd1e7616a0b973dd5e06ae393dbe9fb4b3ae85864fa457a7c3c6c6141"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2965/magpie-cli-linux-amd64"
      sha256 "fbbefd576ed49cc17ea62cd4995c592fed4e893bb1c36594e2c3d9025a30db02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
