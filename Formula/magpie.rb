class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4633/magpie-cli-darwin-arm64"
      sha256 "d2453936450ec765b766d72b2d4eb5a1228717c9e0308c8983acda413266170c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4633/magpie-cli-darwin-amd64"
      sha256 "74117d461ed04ba6d25aadc3a685c39350a71a707a677e40abfe3c802e8736f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4633/magpie-cli-linux-arm64"
      sha256 "833a9ff0673292afc40ed21b44ad747ea8d4a8ec51dd7b29b56322a516d0f6a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4633/magpie-cli-linux-amd64"
      sha256 "cb891163aa742dc7f2d3f9723414830eb0e81c56d50a308e6cc2f9dbaece8551"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
