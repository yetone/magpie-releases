class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3711/magpie-cli-darwin-arm64"
      sha256 "8ce78553aa2f868f999fcdb102cfb3cc6681cb11083d8bc88811ae8c8dfaa072"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3711/magpie-cli-darwin-amd64"
      sha256 "d3f284d88b79543677e4a594ba3f12481d8b4d3670486467aabf5b49154764e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3711/magpie-cli-linux-arm64"
      sha256 "8e539c4df00da7107c8a711ccc326a0b37a92507e1fec9823fa8d9a8fe23bd1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3711/magpie-cli-linux-amd64"
      sha256 "23f314d042469328f9888b7bc11a79fa88c4f3f6991d5889b36e6e61a0152034"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
