class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3266/magpie-cli-darwin-arm64"
      sha256 "e65437c3bddf510ab8722f20eae2170bd866190268f6ccef44077de276b01237"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3266/magpie-cli-darwin-amd64"
      sha256 "2495d15c208d4a9807c3802a691fe14f00fc2a56e9fcd6bdf99cc944ebce5aeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3266/magpie-cli-linux-arm64"
      sha256 "ab1694a4355cfe08b5a224dfbe4b4e9a4c9538798b33108822e667486b4843c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3266/magpie-cli-linux-amd64"
      sha256 "674f15b9c30d5b0c87dc4a45ad2fdc84795c4c819a7bfa37b977fa32d71aa144"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
