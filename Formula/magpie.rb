class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3188/magpie-cli-darwin-arm64"
      sha256 "ef7870f7e56cf1c57f1ef3ac90ef500e3d39a33ab98390bb3dcf13c3a5df3d1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3188/magpie-cli-darwin-amd64"
      sha256 "b9beaf0d436f4ae017e85a2d5a17fc929f8b8240d3ed6938171005bc18d57f6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3188/magpie-cli-linux-arm64"
      sha256 "97b721b4118aff876cc4bac0dce9ad3a9e0654898d9a73a3ce665263ff77e182"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3188/magpie-cli-linux-amd64"
      sha256 "b4b85c758d96fa3c2c5a99787f1e28f8499f7c300578edbb09e2de9ac86a3527"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
