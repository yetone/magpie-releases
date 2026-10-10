class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1167/magpie-cli-darwin-arm64"
      sha256 "9a8c1321ca5c4e77eb6a90abf3c1bdf23216418cc7aae4098c1420100877a9b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1167/magpie-cli-darwin-amd64"
      sha256 "5cd895bcccf40bac2a6676afa05e5551e6604dfaa201279b6fbe5b79badcb145"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1167/magpie-cli-linux-arm64"
      sha256 "31ac84d8357bbd7c38426bf2be55c0b02ef47ff68c6991bb42fe8bb58584feb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1167/magpie-cli-linux-amd64"
      sha256 "52b6d340b2dea16244a4197818dfc5c6cebad5a64bee1469702bb2fffec51923"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
