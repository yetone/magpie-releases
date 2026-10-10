class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1151/magpie-cli-darwin-arm64"
      sha256 "8d2f56152d4f7e3bbc9184cfb4b7ffb3f5c4cc3a2fe382e1e3b5a210a0268f0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1151/magpie-cli-darwin-amd64"
      sha256 "41676b7399ca8572bf04ac4bea5c07f04db138b4471af2c00a9e81a13c2e38c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1151/magpie-cli-linux-arm64"
      sha256 "57ceefa57c49db22c0ed9deb62826d28a94d717e4f47580eb1b97e45e489a6ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1151/magpie-cli-linux-amd64"
      sha256 "2c9314297b6ae72c47ab9707021c07362d36eb410ef2c3ccfce77c27bff461ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
