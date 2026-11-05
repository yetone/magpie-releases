class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3027/magpie-cli-darwin-arm64"
      sha256 "07cc15d3b11d60fd8c8353027faabc9612b5f2bd0dad6b786d18b35d0085d5d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3027/magpie-cli-darwin-amd64"
      sha256 "67120b4cea8a220904cb515c49717981cc396f4b43748c34ea965c7b9411e959"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3027/magpie-cli-linux-arm64"
      sha256 "6dc3de46e4d2f4ecd378b7f468c75f934b912ab0c410f3c427caf1db09729011"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3027/magpie-cli-linux-amd64"
      sha256 "600eb2ab559834c41d2a5a16a2fc3187280b9b2b82d07d1153997acf837d452d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
