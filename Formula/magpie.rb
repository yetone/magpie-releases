class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4804/magpie-cli-darwin-arm64"
      sha256 "4102824c9943aac13c55a7694fb65770c7a8163b0db1a391a987d285696b531f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4804/magpie-cli-darwin-amd64"
      sha256 "fbf7db8ca31de2858c503720abc17d29ea14e71d4ad193e4630ea9938878555b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4804/magpie-cli-linux-arm64"
      sha256 "bdf4e034dcb6a7c77cf168dc60b37b398a90d4de494b6a70d4f53efd261e9e7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4804/magpie-cli-linux-amd64"
      sha256 "debaa38add69923be09a0dde855b60d596ede733d1ee1a3ad5bef8ba88584186"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
