class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2619/magpie-cli-darwin-arm64"
      sha256 "442488f32cdc416bc5a7129c044e367809beac91001afecaab2a5ac1a29004a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2619/magpie-cli-darwin-amd64"
      sha256 "2c35f8985a2fe0c73248ebaab42a5dc0a7a6f42c9f2f46ea6ef35735a9c0d535"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2619/magpie-cli-linux-arm64"
      sha256 "08cf5837bc5412390da7640dd89119e703395d4703f68654bd682e9080830b39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2619/magpie-cli-linux-amd64"
      sha256 "dbdc1ebdbb211a06b4cb23cfa39862b1f621d2336446e51f170f178ee91ab685"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
