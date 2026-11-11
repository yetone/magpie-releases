class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3811/magpie-cli-darwin-arm64"
      sha256 "b9118ab7b152b38cc5fc4981623ee799bdd2cc1a6b4b9890e49adb5bf2c178ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3811/magpie-cli-darwin-amd64"
      sha256 "abceb9f8ad70cd417663ac9ff444232baa59460453dbf8e3b21b35205895454a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3811/magpie-cli-linux-arm64"
      sha256 "975363430836d7e7bb1782f61c4b8cc2b56ae1e51ff35ed5eefd677c61b6c130"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3811/magpie-cli-linux-amd64"
      sha256 "591149c439ecc7cef5a7cfb6a804ffaea7fcdc916772dc9c948da55a74f6eaac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
