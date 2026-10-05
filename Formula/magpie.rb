class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.987/magpie-cli-darwin-arm64"
      sha256 "0f0ab7e8639e96ef6df4d2fe541499ffaf54e8697480cd40f87608923aaa11dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.987/magpie-cli-darwin-amd64"
      sha256 "36ba4326f85b740d604447e104fbbc0b87e150a95aeccfe6de8ad18f039c497f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.987/magpie-cli-linux-arm64"
      sha256 "14042ab4d20887658879b420cdf7ca7d39a243819783565d7712c4b7d537a9e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.987/magpie-cli-linux-amd64"
      sha256 "a544d97bb0e8af5d15a908ec014686ce43e4e5262c1d60b7fd8cb85cfb24d1dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
