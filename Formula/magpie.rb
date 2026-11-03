class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2783/magpie-cli-darwin-arm64"
      sha256 "898e25a8205adddd8d121b378a6050a8ba15d57711691ea9086baf218a6391d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2783/magpie-cli-darwin-amd64"
      sha256 "945a08281590149d740ba0e490ecf0ee8ef9916edd911f40a78dc096ffac4ae1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2783/magpie-cli-linux-arm64"
      sha256 "47139942303aef0a46d419496a551bfc3633c2eec36eebedb866f4a2f464e2e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2783/magpie-cli-linux-amd64"
      sha256 "be35d528d06f155638ea4e380ddd6b41e960768c9d2d893a761525631abc8dec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
