class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3110/magpie-cli-darwin-arm64"
      sha256 "fe7224416b566eb7c834adc39c5182a121611077cab35b0265e7cce937593924"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3110/magpie-cli-darwin-amd64"
      sha256 "fba2d5b77aad5e1c50c2961213ffe16a1a1aa2556e7fd2e92f636697e572d0a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3110/magpie-cli-linux-arm64"
      sha256 "27981d5d7bbef1e1a17dcbc707da538a552c3014b02f4a6e9d837638a957088c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3110/magpie-cli-linux-amd64"
      sha256 "c2822068b6f8b46c217cd183f3ff8ff4432adab32def35e0c59b992d513d1e7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
