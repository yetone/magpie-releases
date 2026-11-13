class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4092/magpie-cli-darwin-arm64"
      sha256 "35977561660144ee88ca296435dbcd3257d017672ce7909c2b7e79e3ada33467"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4092/magpie-cli-darwin-amd64"
      sha256 "877233c30d317f060f74b3893424328aa67cc5007bf225407e319745bbfc3ac8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4092/magpie-cli-linux-arm64"
      sha256 "f4a7e4814e9d0254730d3b11511788350efb5ab529e03dae43b919e735ce36ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4092/magpie-cli-linux-amd64"
      sha256 "cb3339c60a7dbac37e9993e68d17f244b75120ed20432391b8b9fc18e8730823"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
