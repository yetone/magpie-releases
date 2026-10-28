class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1923/magpie-cli-darwin-arm64"
      sha256 "57801932ccfaf65a74337cc421631a18ef097493c8bce6de6f42b41f4a0db3cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1923/magpie-cli-darwin-amd64"
      sha256 "7ccc40223d26de2f790ec99f7a448b56c44c500b6ba6df4ef91562ec2be5f4ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1923/magpie-cli-linux-arm64"
      sha256 "386c9bd8c2b0dc266016349b2d212a5e11bab004ec21d234676f57325adacfcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1923/magpie-cli-linux-amd64"
      sha256 "3b152c0daca1dde23f8941a1bc7b49e0021b4cc14dae50d6e43d2ee33d19f513"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
