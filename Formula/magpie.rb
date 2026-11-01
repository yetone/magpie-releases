class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2640/magpie-cli-darwin-arm64"
      sha256 "a18f25c75b5d8c810bab6caa77d9f7ec884c8ca34ce363a2439237f995c65e6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2640/magpie-cli-darwin-amd64"
      sha256 "eb0692af85964bb73f6d5477d5631ba8c11fb50bad75ef4f0fbc6eea8251c154"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2640/magpie-cli-linux-arm64"
      sha256 "577193ed974d6510659fbabe79e904d334f902249f04959d76d39e9cfe7f907f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2640/magpie-cli-linux-amd64"
      sha256 "6aecddacab1a6b83a652ae795eb33395a98471b3c3a2b1530f5e2180ddc88775"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
