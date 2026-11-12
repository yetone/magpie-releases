class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3884/magpie-cli-darwin-arm64"
      sha256 "c91a10d32b4e6ef9eb293ca9c190fe7b937a86fc83e57d5e5fd16504a346439f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3884/magpie-cli-darwin-amd64"
      sha256 "0bbd051cff0d6380ac1b379e9ba2e92c6cfccaa1ddf480aadffce11e8dde3d99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3884/magpie-cli-linux-arm64"
      sha256 "26e562761470bb0b0bb0c74bc07d831808fce6372ecad98eef5ed4872dea70d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3884/magpie-cli-linux-amd64"
      sha256 "bdbccd4d3789325983ac6acf9c3bdf2d6a7a554798395cec04294323c8b3953e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
