class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2210/magpie-cli-darwin-arm64"
      sha256 "83f0672a4d9c4ed19c2e9151e9502bdae47cff45c7663c41e50de901362319a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2210/magpie-cli-darwin-amd64"
      sha256 "93915c07c2270008daf4bd63d678e6a352e897468479f86606f19b5d1c053b31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2210/magpie-cli-linux-arm64"
      sha256 "fe6e06edecd1059c0caafd3151afe56fe07960900785a617010557fd0ddefb07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2210/magpie-cli-linux-amd64"
      sha256 "5ddd5d10ad4746b262307403feade68f0c060891c2062956c74d07a1ed41dadc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
