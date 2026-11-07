class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3249/magpie-cli-darwin-arm64"
      sha256 "f3e025c6352f43a7df15fd90c88f542bf50374222f124e24b54d11eb25e65c37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3249/magpie-cli-darwin-amd64"
      sha256 "71d227a18b56a422f139042e6e068885104f6cc1c4011b7d2235e44207a956a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3249/magpie-cli-linux-arm64"
      sha256 "25929dff7670eee92518a042018a3ebc1153fae194b2a494500fa9368fe19d08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3249/magpie-cli-linux-amd64"
      sha256 "7a65b15d2479a614e3367756233c8355adbfdb0f63c3cf8e3a3c55613ab5c490"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
