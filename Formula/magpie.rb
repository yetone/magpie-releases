class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1836/magpie-cli-darwin-arm64"
      sha256 "f4c1371f610ae99fa6fd63cd8cfe91198f575a8bd895912c2a864f26a399f0e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1836/magpie-cli-darwin-amd64"
      sha256 "fcf9c56eb4a3af072e314c55780e3bbbc8a5d4da61c0631605365e63d27b725b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1836/magpie-cli-linux-arm64"
      sha256 "b5c622bb5a3d92795ff6fbc0aedafc79d296448998ffd450c6e99ed56ad476ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1836/magpie-cli-linux-amd64"
      sha256 "240b80e141c4149814c4a0760808bcf4909523dc52f0a2be1a90437243af4eea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
