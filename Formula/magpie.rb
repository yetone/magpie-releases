class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1877/magpie-cli-darwin-arm64"
      sha256 "993bd8d0fd23ac37afab219b206835d6f7797827d9e2b8b47ffa66e86f35a33f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1877/magpie-cli-darwin-amd64"
      sha256 "467907443f9c66bdf572d299f8bbefab06caf0d8c119a2188126d933e087200e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1877/magpie-cli-linux-arm64"
      sha256 "7963b29ef69b067fd750243646307b45ba1181e6ccd16f6afc611f87640a52dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1877/magpie-cli-linux-amd64"
      sha256 "adab7c7127d4837d964dfa5a21bc32a76d0fd3b08fc0262e1609fb76bd38362f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
