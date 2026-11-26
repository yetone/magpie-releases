class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4844/magpie-cli-darwin-arm64"
      sha256 "c7ce28325e01b18137507897ee6c8b1c866a0e1fbe24ca818ef80f2f90d4eb1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4844/magpie-cli-darwin-amd64"
      sha256 "0a1bb65a1a596f0b89d233ca1520a0baf96f9506de9d787ab52fa6d5e92dca6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4844/magpie-cli-linux-arm64"
      sha256 "563fce767d7b6366d007f33b5c5b4be00aeaddff99f5e881c50f0057139799bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4844/magpie-cli-linux-amd64"
      sha256 "fdc93d725807e01c03db60622323ae474d0f6c4b84022813adc5b44fe86b66e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
