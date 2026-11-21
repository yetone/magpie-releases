class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4654/magpie-cli-darwin-arm64"
      sha256 "5f653869d4fa6b007fdae81f3953ed145ad282dd9068d4acdd7eec1aeaff5a6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4654/magpie-cli-darwin-amd64"
      sha256 "eb1437ee0cfbf0be2d962894e72b0fc90c681c32e58537979a914df581fc9960"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4654/magpie-cli-linux-arm64"
      sha256 "f2e8abf4e021145902e4e3de3b6def302d34c37a9609e6b240d719f3c6b24717"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4654/magpie-cli-linux-amd64"
      sha256 "e4ed12d3a97c99f4c8fff9a288d7a1c103a0177199a78d740775c5634a22a4e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
