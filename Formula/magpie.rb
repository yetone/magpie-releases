class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4044/magpie-cli-darwin-arm64"
      sha256 "9971e6cba67b8e654d097eddba75a6dbe9d32f9f2675421b4b5d01be0159b675"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4044/magpie-cli-darwin-amd64"
      sha256 "6648d9ae97a1e3146bfe2bb5e5e43714680b3b6948481b8e5dac2c342b1772c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4044/magpie-cli-linux-arm64"
      sha256 "e7c2d5f11445f39c9a8530858eb669602f85e606013314c295dbd6735316cbcf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4044/magpie-cli-linux-amd64"
      sha256 "aba2f4ef1bfc0038dfb89b92af326710e60aea6b1b79221b65941a62b3672f52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
