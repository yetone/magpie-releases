class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2268/magpie-cli-darwin-arm64"
      sha256 "c81421b2ea9dd620849e0829acbb73b0ada36b8df6afbee0da53a3e07f8e7270"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2268/magpie-cli-darwin-amd64"
      sha256 "d1bf0d2d860c370507530abc081dcca8fba1473bdc3bec2ad5c2ce94dde73760"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2268/magpie-cli-linux-arm64"
      sha256 "a662f7542444df8a77639cc69dcaf39d11c2f08f2021bf0fe0dd7464e52856e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2268/magpie-cli-linux-amd64"
      sha256 "6c1b88ece850d7197d461d59d5ed63b0176f892786e19b8f339cabda26dc0bf1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
