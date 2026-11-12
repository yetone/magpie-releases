class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3897/magpie-cli-darwin-arm64"
      sha256 "c95af658f6ebb920771e6a19bbfd3af9e739b32d0b65c91ff71dc97ebf0cb798"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3897/magpie-cli-darwin-amd64"
      sha256 "0c9f96a7fffc178873ba6afb69789a8559136b743529bbc7d762c10ede76b823"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3897/magpie-cli-linux-arm64"
      sha256 "4382a8ff26cc022011e08303be9442a21b3ca4025621fa5bba5564098d90b876"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3897/magpie-cli-linux-amd64"
      sha256 "136537306b361d5318cc0732c7c0da283974466ee303ec05bb2a4480e3fcc5be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
