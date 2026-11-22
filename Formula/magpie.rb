class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4676/magpie-cli-darwin-arm64"
      sha256 "2b4ab4535f802479650feb4e31f80eaa81901d0b27123e7ccf36a4b400bbce8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4676/magpie-cli-darwin-amd64"
      sha256 "9325832bc3a9a86cca0d54a087cf9de616e6af929ee1e75d490d6df0d0094c0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4676/magpie-cli-linux-arm64"
      sha256 "26b9b5bd511b3e82aa6f0ffb4d63f2e53ed662ef036f5029f09cc03c501a776f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4676/magpie-cli-linux-amd64"
      sha256 "cdfccb8dfee38e8faf4e4a6b8f67a11f91aeebbec8090ebb7f20edf7a428d890"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
