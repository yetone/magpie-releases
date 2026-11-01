class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2607/magpie-cli-darwin-arm64"
      sha256 "acdf0bd91495a44eeed805fdfa490d26d1d04745b0efb95f7189450f0251fb83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2607/magpie-cli-darwin-amd64"
      sha256 "f19b2166065eb3787b30090ea9ff943d4e95eed13f9602ed34157ef78ffbb7a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2607/magpie-cli-linux-arm64"
      sha256 "ebd2279e4eeb956d781d491d4f7c1fa408dda8db1a5a4e04fe944d2d066eb366"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2607/magpie-cli-linux-amd64"
      sha256 "64586b6ae532f49867e882d42d7813188a7f396c65b05fb85745edd3b3f79e7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
