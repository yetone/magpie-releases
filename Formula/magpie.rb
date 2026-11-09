class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3478/magpie-cli-darwin-arm64"
      sha256 "ab4af6b0b8bae3841efd147c110abf727bba1415c0e2e341f349d49ac67a3cc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3478/magpie-cli-darwin-amd64"
      sha256 "5aac6d3cb20671cf594e232c9957757b04629dd36ad27875e648d9ad83c917b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3478/magpie-cli-linux-arm64"
      sha256 "e03b7a11118e494a9ca1afb07a451ce458f48e8b217c2a2bc5cac796874efd53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3478/magpie-cli-linux-amd64"
      sha256 "d2c6caedde78be07d0771a09bc4fd48a91f1b808d60449771bbafca5ac327121"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
