class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2125/magpie-cli-darwin-arm64"
      sha256 "10616f33eed8c56c04aeb5c506e317a0b75201965a2e9f2cc0bc5a39efaea5df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2125/magpie-cli-darwin-amd64"
      sha256 "becb7270a753923b200df17f01bfe8f7a138488f349378c426415ae34b0963c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2125/magpie-cli-linux-arm64"
      sha256 "db5011b1996240a8aabbc5c2bdf343865091e8a0baa79a6796f81561cbde5e70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2125/magpie-cli-linux-amd64"
      sha256 "5f6ce96a71b660944d1508ca5adcd6fcfda5b50b9f8ae6ca3d699d13e3d7033f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
