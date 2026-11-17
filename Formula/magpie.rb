class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4343/magpie-cli-darwin-arm64"
      sha256 "3e2b613062cb8eda9df4f5fe198fafffe33916cd02eb42d2fd6d672b58ad1ee0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4343/magpie-cli-darwin-amd64"
      sha256 "ac0d7c9ff04628fcdc1827ee5f1bdc943a509fcf2cb68c3b8145bb3b078a977d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4343/magpie-cli-linux-arm64"
      sha256 "d1ddf94f3a1d8479fdddde66fc8e2c9f498f50fd5abdb15d8c1584b3aea8941b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4343/magpie-cli-linux-amd64"
      sha256 "dbc214be279e016cc80110c67e75f69f3e8bd39e9b0f0d937b1f16f55b172517"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
