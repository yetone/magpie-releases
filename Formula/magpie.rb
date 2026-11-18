class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4496/magpie-cli-darwin-arm64"
      sha256 "9cecddf6f3822d02576dc9b8c04056702feb62cf9a5cacb48d8f26f6b63e0d73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4496/magpie-cli-darwin-amd64"
      sha256 "9dc72b650410cd8ef41cd547057343f81500478af4d112081cd9cca98859ed82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4496/magpie-cli-linux-arm64"
      sha256 "9c17a10a1a3585b8b6d6f71e95ae046c5c8d6e98afe59d4cb03d4b02d784e0e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4496/magpie-cli-linux-amd64"
      sha256 "1ff278266c9c687b28d1dd13861738bb9ea621063c9b421ec9c9bd3abac90521"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
