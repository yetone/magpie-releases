class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1845/magpie-cli-darwin-arm64"
      sha256 "ed5a5525d2da88828b763abe3acf9ed5b0ada2c02268ba193c357088dd940c4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1845/magpie-cli-darwin-amd64"
      sha256 "b5aa542239d883c2ff02a5ade3390c7deffdf931d46ca87cc99ada8f1d86178e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1845/magpie-cli-linux-arm64"
      sha256 "98d63b54cd4cb5d0d2703fd47bc8645134a60713425e16810c0929afd0db0e27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1845/magpie-cli-linux-amd64"
      sha256 "cf036ea0a7e494e62d37293278a69f874aff769293e585679381110ce1f73509"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
