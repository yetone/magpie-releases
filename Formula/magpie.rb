class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2100/magpie-cli-darwin-arm64"
      sha256 "d502751462bd8f974f23bff3095578917b9e08bdf86e964f60564e393342a36b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2100/magpie-cli-darwin-amd64"
      sha256 "7a8a6fdcb1d4023f55ab2565aba9411a2142d84b630450b996a37160ca6909ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2100/magpie-cli-linux-arm64"
      sha256 "9f750fd750782414ccaff1c115a4f8f869940395da43b650473febc64f73bb20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2100/magpie-cli-linux-amd64"
      sha256 "c232b7c044bceb8db6433c1986b0132da147c333cf1458c67e662a6674c443af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
