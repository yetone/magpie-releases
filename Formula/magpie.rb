class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2527/magpie-cli-darwin-arm64"
      sha256 "997837a15726b4c4111baa0b75f4a3888e969bd1318d1d315ab2bf9b44745ed7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2527/magpie-cli-darwin-amd64"
      sha256 "9e3d9d4bb41b17dc837f6ce516a5d3f70fa9a9c5423111665b36a9abf0443293"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2527/magpie-cli-linux-arm64"
      sha256 "28910f7ff7248871c4c4b2fcd158cfe01fc1abaf215c2ddb14883cf78d322352"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2527/magpie-cli-linux-amd64"
      sha256 "93f79b9394924e77b96c15d2275788a91188c8a62ef4a68ab799fc0ebbd59937"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
