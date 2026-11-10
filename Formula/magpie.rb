class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3488/magpie-cli-darwin-arm64"
      sha256 "b87c6bc8edf26ef2c814994f98dcc11291f31c0d8a1c356a9ab3a2d69485392b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3488/magpie-cli-darwin-amd64"
      sha256 "ed0ce891a6535df2f1db3f8d4cf0ff1526b0d2e02cac43ef45ec3ff9e262e184"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3488/magpie-cli-linux-arm64"
      sha256 "238cad027dabcf2f61f6784a27ea57e481e2063c4823cf9775c7c7d8699120ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3488/magpie-cli-linux-amd64"
      sha256 "826ecc21e33d11b5a715d02a466d003c6e90510cca6372e5bc56697b6cb71173"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
