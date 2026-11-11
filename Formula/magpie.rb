class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3682/magpie-cli-darwin-arm64"
      sha256 "0ff9381d375fc6e7bc9bf0fccf9b30b40f044f19c689dff7fdd1ba6bf1eccf33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3682/magpie-cli-darwin-amd64"
      sha256 "1a1c5b3410be8be0a7d65a4f2ff1581c08f9ae6545f608762bf9477570f22ab6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3682/magpie-cli-linux-arm64"
      sha256 "f2c93f62a770ad84427fd1507d7b0ca36c71c5beedfbeb27f3e60fc5f1612a37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3682/magpie-cli-linux-amd64"
      sha256 "5493e998191fa32b0ee8cd95de9120da52e2103de6480f21d89903f39f6b106e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
