class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2033/magpie-cli-darwin-arm64"
      sha256 "0b70e3827042ea43d303c596f84d48160100842df2205f0a149db31a27ca2fb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2033/magpie-cli-darwin-amd64"
      sha256 "2218c320e41768e5664835cdff93a0ae4ce5d389cbbff3ab4506b639928d00bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2033/magpie-cli-linux-arm64"
      sha256 "6ebcbc94102be8089097417a253a36f7bb436a024d0c0f613835b0bc953a10cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2033/magpie-cli-linux-amd64"
      sha256 "8e0db69d3b194f8a5587422e5da280916c5f3ba4f907ed82af8bb0d31b12eef6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
