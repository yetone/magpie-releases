class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4705/magpie-cli-darwin-arm64"
      sha256 "925e0f82f99792d0716bb14a0b63992974199a9f922750d656e21e088af0c695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4705/magpie-cli-darwin-amd64"
      sha256 "68c28ae3588087530a960efa168036445f242e736f57c549d1387f2bca44c05f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4705/magpie-cli-linux-arm64"
      sha256 "5db7e27bd103a8a66c3ac3b8daae07f4ef5c21b0e8819fca3ceb6059091abb7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4705/magpie-cli-linux-amd64"
      sha256 "f60678a29f759ca299807524a79e4e5078db51ae812c57f3f7f5ddba2a77892d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
