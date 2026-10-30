class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2169/magpie-cli-darwin-arm64"
      sha256 "2545b880d5178af653ba3b29ee020a434a4e70c8edc32fed1034401bda274f45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2169/magpie-cli-darwin-amd64"
      sha256 "89679f4d59919732f3b91ed95d9de8d157dfcf1d6f9620937d428e2c9bfbd01d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2169/magpie-cli-linux-arm64"
      sha256 "9907048f5452e87ddbb9d5c9f9ab2a45b1e4860de385590d8620ddd8506a2d29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2169/magpie-cli-linux-amd64"
      sha256 "84ee4a7e93f7f76fdb2d4ba0bf96220603cd4859afa341f537162f33540efa2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
