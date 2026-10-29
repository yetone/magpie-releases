class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2045/magpie-cli-darwin-arm64"
      sha256 "ef4e2d497d0e93272d0cd08778b36d0c7b40b8d866f5c2d3a5889de6faaba507"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2045/magpie-cli-darwin-amd64"
      sha256 "672c8981132dbaf6f18197ca1d00922f664b7a37ef3b63ae73c1295eb8eadfd9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2045/magpie-cli-linux-arm64"
      sha256 "1bfc40bdb0418bd57f1e731968c0ac2f92fd5df10096a177ac7ee0b84fe20022"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2045/magpie-cli-linux-amd64"
      sha256 "883f28400190a146c5bf285877f7b586d16bf3f0e981d6aa5c50349e4cb2d04e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
