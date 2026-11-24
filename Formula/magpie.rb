class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4750/magpie-cli-darwin-arm64"
      sha256 "2495dfbe07e4bbdfe49ef35512d7fbd010cdb84c123419542dd79a2bc2534f84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4750/magpie-cli-darwin-amd64"
      sha256 "a9a079c1fee76b215e42022333fabf6f2950aa154a019b19e4378906a0f33c08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4750/magpie-cli-linux-arm64"
      sha256 "e45abe2f7ed2a14c2bed7fa7661d428c3784aaa64a7a5f2131ac4e22d7a315ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4750/magpie-cli-linux-amd64"
      sha256 "047b03a5c0a680689f1c45fa98a3dac7da6f8c64254e38c436a9e7a0e6b975f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
