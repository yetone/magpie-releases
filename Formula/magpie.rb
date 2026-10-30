class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2229/magpie-cli-darwin-arm64"
      sha256 "9a418cb37bc9d2a455bd24a0efff9f26bbcf8673992e198cf4c3104c4c39ed3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2229/magpie-cli-darwin-amd64"
      sha256 "c413c58cccc50cb0b84638a19571709ab722c34b18c86265eba7de0a89ae7413"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2229/magpie-cli-linux-arm64"
      sha256 "6e8703acc6a368f3b033b9f0e7821a33683f9c37415ada1853255fd13b22b8fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2229/magpie-cli-linux-amd64"
      sha256 "70a1b2af72a95c4ca479aa7a7cb64179e0a6095fe1cb87e3a3675c868095ea26"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
