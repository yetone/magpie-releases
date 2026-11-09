class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3444/magpie-cli-darwin-arm64"
      sha256 "5df6559476f35688c82603daa1d1558298b16ff2f9c19ea1cf010ddf2e3b77de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3444/magpie-cli-darwin-amd64"
      sha256 "6b5fff62ae79fcfeb617ea7662dd56c65f28b3a7f312994d2b25be5918b72b83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3444/magpie-cli-linux-arm64"
      sha256 "047059a456f5663e77f87ba17eeef257b9acf2163ee36ea001966afe939e80f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3444/magpie-cli-linux-amd64"
      sha256 "6cfc695611608d8ee30d097f1f03525ae96481417a6447924972304700fc76bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
