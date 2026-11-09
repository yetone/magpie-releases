class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3389/magpie-cli-darwin-arm64"
      sha256 "d2ff20b22d9fe11468d146671595a637b4e31ab10fd878b7f46f87feb362343f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3389/magpie-cli-darwin-amd64"
      sha256 "207c24e405f518036073fa58a907a00525809e443b3ef34ec89cffbea70188fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3389/magpie-cli-linux-arm64"
      sha256 "8b5bf6206af51e682d32402ff3dff56b2e54e1bfd08edf81ac865b98963998ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3389/magpie-cli-linux-amd64"
      sha256 "a9a3f439d8398b70e66680bc95f57527f03a82e32078bc3ab322f3ba286e8e5a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
