class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4449/magpie-cli-darwin-arm64"
      sha256 "66ee97c474a056cb2196d2b8a1a750554c219d94b39cb1b76ae2e8d824a28cf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4449/magpie-cli-darwin-amd64"
      sha256 "22e18544ffab059e4c3705a986d9c752e217fd2f4eb6afbdec3085d3fd723916"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4449/magpie-cli-linux-arm64"
      sha256 "4a10b9da46e65b03e80c4a4253b0b7d1224b5263bbc67a5efe9b8ad54a90777d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4449/magpie-cli-linux-amd64"
      sha256 "fc0b88f1af7cdc2d822a602ac502c81178759d841d1d624964716dfed39b11e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
