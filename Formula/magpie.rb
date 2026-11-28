class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5001/magpie-cli-darwin-arm64"
      sha256 "9a651dc9ce2a402f1f2ec8768ad017df12747b9ae41035920620ab8e216b3d3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5001/magpie-cli-darwin-amd64"
      sha256 "0384d8363d465c372979705f9ca7085a48beb6980c5237668467d7ce4a3236ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5001/magpie-cli-linux-arm64"
      sha256 "291238bda9645200e9a2cfe08e4fd439813220afadb9f66b811ddbc94c195c1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5001/magpie-cli-linux-amd64"
      sha256 "5e8f2d892a3c1d607c3beb13a455bb53c509d24b6bf553073758c607e4a7caf7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
