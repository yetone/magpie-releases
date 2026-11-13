class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4080/magpie-cli-darwin-arm64"
      sha256 "0f61cce5371fe6291252a7bea858916f340a61164f511e36e4ea96df2c68d0ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4080/magpie-cli-darwin-amd64"
      sha256 "52101d2d37be2c347fbba3991c065b7ce8378e15050e896020ca034558c323ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4080/magpie-cli-linux-arm64"
      sha256 "f13bfbb82f07293dea5ce3b00ab49293e7019647619e723a0733961510f15074"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4080/magpie-cli-linux-amd64"
      sha256 "b279571c7b0e3c5169441a0455c82849b14e07cee0cd51041820a5a02e3ce950"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
