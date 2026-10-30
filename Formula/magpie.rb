class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2186/magpie-cli-darwin-arm64"
      sha256 "aec8e6cd0a2e67372a3d0980046399029ad3acef7c629e94f1f9c9c0f424bcf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2186/magpie-cli-darwin-amd64"
      sha256 "5427ef519891737a5b635504a097d7835ace2ccc334f87c5761e68f47ed8bcbc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2186/magpie-cli-linux-arm64"
      sha256 "36d574cbf1205b0a1b0d7e732f2a9d097b2015222c0741984e7b2a06385bdc92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2186/magpie-cli-linux-amd64"
      sha256 "c7b98ff594dda15385cc321eb3ab137b0ebca444545c11339382763e0ef34c57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
