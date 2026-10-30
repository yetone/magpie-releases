class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2137/magpie-cli-darwin-arm64"
      sha256 "990221c448b353720caa2318b0ce0d16e05593661487b59ad0118382bdba3b35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2137/magpie-cli-darwin-amd64"
      sha256 "e7f38b6b0758b79b7d5f48624e228c4586a42ed005fd67bab664403da966ca77"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2137/magpie-cli-linux-arm64"
      sha256 "d022ba270470918f2cbab9c74b86b3bd8be0b012bed3ceec472b0ccd119beff6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2137/magpie-cli-linux-amd64"
      sha256 "e67ccdd034b954aabd20eadfe4aa993d084a9c274028f24a2bc26e335e2aa7b5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
