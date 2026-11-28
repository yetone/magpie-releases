class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5004/magpie-cli-darwin-arm64"
      sha256 "6bfcc5f80d2b277eda7d01ad528a7ec310ed96e5406a0c9cf44f46e5b4f9ca6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5004/magpie-cli-darwin-amd64"
      sha256 "d916a17cf811f907ae2a95e6b37c41da7f7ddf89b2907bc24dc12b55423b09fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5004/magpie-cli-linux-arm64"
      sha256 "9b03d293b6ff475f9b82881a5a64591e4a1f01be6f7c8041830e1e05913bfb5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5004/magpie-cli-linux-amd64"
      sha256 "4d3a2898375f562776ad0baeb756b55eef04918267757b0b9233fc3b554f923f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
