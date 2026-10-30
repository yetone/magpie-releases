class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2142/magpie-cli-darwin-arm64"
      sha256 "cbbfb92340fcdcf5d117dd1334c5571309493129c1dd3ebfa1f0300d66c0b1f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2142/magpie-cli-darwin-amd64"
      sha256 "14ff8b3602202cae5d402f778347ecbf5459caeb81f9e8172923ce2d2461df8a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2142/magpie-cli-linux-arm64"
      sha256 "30e6126660f93cb51d84f1b3a62c9da58b38067f0f926e68b86de06cbc97824b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2142/magpie-cli-linux-amd64"
      sha256 "3dfbdf5569807076414e88eb6216ba5d8f97cb9559f2be85743cb5ec3b386be4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
