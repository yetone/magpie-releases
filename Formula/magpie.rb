class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3827/magpie-cli-darwin-arm64"
      sha256 "b9b0a4045a568ad6b568cd22138b23e4c2dba4395da16e2ae6f98ddee25cc83d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3827/magpie-cli-darwin-amd64"
      sha256 "33b838a48c0690e94b4660d09455991b552c749a32dfc07ed43ea9f651ea176f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3827/magpie-cli-linux-arm64"
      sha256 "c41ea48539a8f5c308db9b5d5ed6cfd31202c6101494afca8e4a37b2aa21fcc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3827/magpie-cli-linux-amd64"
      sha256 "b587d06812516e403c8f475ddf16e28c72ab7c0a3e1f07eae1b7f1d3bbf26a5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
