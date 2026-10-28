class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1930/magpie-cli-darwin-arm64"
      sha256 "40999fc420e9e6650a0ba2d42f0c1faec38f007ef48b910bd04eb05e688b0f07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1930/magpie-cli-darwin-amd64"
      sha256 "01e69148e9bcd9c0261beae793ed0e15a1e7f6e6e25191a9d004ce8be7ad3fcb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1930/magpie-cli-linux-arm64"
      sha256 "d8e1254b24ecd4ea3ae950ac907cbed96aec93224775bfe3e06ea8c97941cd6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1930/magpie-cli-linux-amd64"
      sha256 "6ca432b76728a872b9e9ccb11a3a282ac6c884fb813c7f58fb536342f50ef0eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
