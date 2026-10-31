class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2489/magpie-cli-darwin-arm64"
      sha256 "4cab0d1c4c4cfd6792c53b0349274226a1f5e5629e3bc1812d33872748ced3d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2489/magpie-cli-darwin-amd64"
      sha256 "1acb40cca868e5a67d653617181f355b0ada59cb4aa5c03f0d969c952451d115"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2489/magpie-cli-linux-arm64"
      sha256 "c270755172170e2de07e499b88d7e8d73d97c1c1ccedba77d4bd8c50c18b8a9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2489/magpie-cli-linux-amd64"
      sha256 "97d8273b400a9dda23efc1bfc8fdf560dec23a5b59fbc2efbb5d67f1de5110b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
