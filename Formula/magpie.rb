class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2558/magpie-cli-darwin-arm64"
      sha256 "47c38c6188895fa40b351a4f3454e42e9fd1c8f9eac96299623888f880f9130c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2558/magpie-cli-darwin-amd64"
      sha256 "370e851cda0bf92de6086bcb36f95c6141df2cf15788befb202ece0b692d6f9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2558/magpie-cli-linux-arm64"
      sha256 "fed690b9e0e10e9eaed19c4fd347edd7f41e8892c3beaabc68fb7e25c8ab57ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2558/magpie-cli-linux-amd64"
      sha256 "535f5e76f5c217124a3ad9b7872686bf262f2796a90434fadea0ebec221c7908"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
