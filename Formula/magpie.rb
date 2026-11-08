class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3298/magpie-cli-darwin-arm64"
      sha256 "287e9b186a53b350b681e73347b097079b4a6c8f5b13be1ac599e20ea27fd264"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3298/magpie-cli-darwin-amd64"
      sha256 "c1d2d0511e7714776778f441a404e2d9e7d41f82ab65cd2eb18d0e25b7c66089"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3298/magpie-cli-linux-arm64"
      sha256 "5b476fa3724f525a9eabfb748e5cd079c83b06d6994a33ec4b8e06f39bb2f9d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3298/magpie-cli-linux-amd64"
      sha256 "30a6fd6f3faa2589173e80ca485e3ca63c47fb6d175358c831627ea5b3995310"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
