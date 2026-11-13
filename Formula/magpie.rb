class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4016/magpie-cli-darwin-arm64"
      sha256 "29d1b1bcbbf3143a3d31d1a508e1c096817af40ddb610973247e624c3ba2e9ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4016/magpie-cli-darwin-amd64"
      sha256 "cc9587130644c2e325600eef2864d81a367032e730f8f0a34e4a0ee488cdd740"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4016/magpie-cli-linux-arm64"
      sha256 "c66e6172f4daec5dd78857152e274da6396e1af911966ec3b6cca0d253dafca3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4016/magpie-cli-linux-amd64"
      sha256 "f2d24618b944de487c10e6f2db493a4117957e5afe037df21c36b99be43c3e0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
