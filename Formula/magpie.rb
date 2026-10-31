class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2396/magpie-cli-darwin-arm64"
      sha256 "e87c74f2846b5514350bbd307a956a4529b9d193f13080fb4b89d65de9c6c759"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2396/magpie-cli-darwin-amd64"
      sha256 "6f4b9e57921097d794712b903a403b5ef8c81b4a31815c02a0242ddddd2a4d46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2396/magpie-cli-linux-arm64"
      sha256 "1feed06032300696acd4db467f8bbb35ab7c470b8c180bf513b1e6f0288c6900"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2396/magpie-cli-linux-amd64"
      sha256 "cf6bacb74c4d8ed52f87d54cbb7488c2e467672284ca4a65beb77a5b45f53d1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
