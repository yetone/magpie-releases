class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2399/magpie-cli-darwin-arm64"
      sha256 "d79fb4e05a9bccbc7881882a659381d6d1e4fe5df82c131ea2f495b6abca350b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2399/magpie-cli-darwin-amd64"
      sha256 "118c7f89bbe3d2fcef542068a097777d060135e407da7d67db7371580b7c3786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2399/magpie-cli-linux-arm64"
      sha256 "8ac80473a928e69b229068db79e308bb7f9f0f1bfc1d8a6a7507c2cb895945f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2399/magpie-cli-linux-amd64"
      sha256 "d22dc5072810a32971a9771fb08c4e8c998480022ffc03cbc7e33f833594b7e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
