class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1071/magpie-cli-darwin-arm64"
      sha256 "c836ef49091c1635260ac48b1dd7f54fea9868d9c270b5314e510ea4bd9460f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1071/magpie-cli-darwin-amd64"
      sha256 "4cdf798fc52a41e672cc5eaa3dc2d5e3e8250f26c27304c209ab79d55c472ec0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1071/magpie-cli-linux-arm64"
      sha256 "5a4a5b7e168b8d826b97409e9d7fddc99fc39b4b1c9e074da351e577a005d073"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1071/magpie-cli-linux-amd64"
      sha256 "98d85a561703e35b7f157dbd5c588472c8ac4b3ccf72c0d9ed166656b59d0967"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
