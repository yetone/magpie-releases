class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2091/magpie-cli-darwin-arm64"
      sha256 "aea624e8298d78bb3cc1a5ad030b917424a199c2a66df623a5edad8ae480e797"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2091/magpie-cli-darwin-amd64"
      sha256 "2ae7358faa076372457ecc29cd9dc1ca801dea9974fb91195237e50bb0f48af9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2091/magpie-cli-linux-arm64"
      sha256 "d28219f938c888b307ece86a78973073709a6133e54c40f7e71f7bc1f2962c91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2091/magpie-cli-linux-amd64"
      sha256 "b01fd50bf4b618b5afa2eae757bb4d2ca7f85b6e35fc8789087dd49eaa3b0cf8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
