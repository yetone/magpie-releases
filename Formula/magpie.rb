class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5035/magpie-cli-darwin-arm64"
      sha256 "9c4805896222287078d84f1d2663f0e1944097b0d6f546af5f926972fe1f3d6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5035/magpie-cli-darwin-amd64"
      sha256 "c5899ecea87504fe083372d298070d6798e46ee6fb552f027445dc659e350c82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5035/magpie-cli-linux-arm64"
      sha256 "11aa55f764d753855a101ee9c10cc94b977373ae930b186d409ecaf02b1e61a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5035/magpie-cli-linux-amd64"
      sha256 "b8b1e9f32de0c6261e2a6007f9ba958d9832f68ff33ace7a5e88f674b067e7de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
