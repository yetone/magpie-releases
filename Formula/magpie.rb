class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4205/magpie-cli-darwin-arm64"
      sha256 "7fca786435f27819b5f7ee5a22b35931018df1e7caa0af2f45456bc0775e8a2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4205/magpie-cli-darwin-amd64"
      sha256 "c6256f0749db524320f2a4ef563ca9965413d314a90760366361b5bf909b2ecf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4205/magpie-cli-linux-arm64"
      sha256 "eb35ce1d945c7cb07ba4ee9d279288338e7ef0d385de6145db62a9fc04db2580"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4205/magpie-cli-linux-amd64"
      sha256 "a8e8ac5152af3d8245a4c3ae7ff0b8227e5fb7ace075e00e09a5134e8a8bfd35"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
