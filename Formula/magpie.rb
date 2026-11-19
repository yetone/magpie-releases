class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4546/magpie-cli-darwin-arm64"
      sha256 "42cb1c425ddadbc8bceb77e469c7b528360297e0ee3cb05822d5e24641bb216e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4546/magpie-cli-darwin-amd64"
      sha256 "5346ec22ffbe41af9d533efc7f9d60b0a5539a7b55471460c42705790d3188cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4546/magpie-cli-linux-arm64"
      sha256 "522a1b52f3a79c901cc6bfbf06cf3e22e8e601e1bd986fbdb89d2a6c595403dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4546/magpie-cli-linux-amd64"
      sha256 "1e9ca7cbb31ed063819b1ce76472caeb33850ca9f7b688fcac8a976cf764e8cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
