class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2545/magpie-cli-darwin-arm64"
      sha256 "a268307be8387cb8621964c4cacbfd2d3baa02c61396dda3238d5c2aeb44a5d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2545/magpie-cli-darwin-amd64"
      sha256 "84dbe8f6a038ec086107aaaad0e0e55554b41c6dec498b3249213334341be837"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2545/magpie-cli-linux-arm64"
      sha256 "38996c5e4a44a2ad37702f91aec4c1af465f7d2156a345550f1837f0a7bb2864"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2545/magpie-cli-linux-amd64"
      sha256 "1aca9deb6b54cf481303de344d9f17ce5675e66818b532714a8f7ccee8ebe4ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
