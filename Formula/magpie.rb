class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3272/magpie-cli-darwin-arm64"
      sha256 "34a1c9a826d68d409db51a74b7c2c7c401b552f0bcb89b712c076bef9fef1986"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3272/magpie-cli-darwin-amd64"
      sha256 "d0178a9411935040d6c4fd8e589c8a798ee18712df0421e01af0d8a516432699"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3272/magpie-cli-linux-arm64"
      sha256 "c65a3d211d3fd86ce376d82133ef5eb78b76e70de59e631550a3d99a716a92bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3272/magpie-cli-linux-amd64"
      sha256 "d26dfff32a7a325eed77a630de65a7e3061aa3665b9ec286e256bae4fbee1a3c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
