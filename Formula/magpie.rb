class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1839/magpie-cli-darwin-arm64"
      sha256 "21c8822610863b1f72641f1f1c92467a7660006f9103043111f03e0d8b66c815"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1839/magpie-cli-darwin-amd64"
      sha256 "7bd39b72aee702ff6d8c0526dec7e0d0298df426d498e8a23888875f9546ba9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1839/magpie-cli-linux-arm64"
      sha256 "e48949f5e8a3eb15aff7b605eee3f6b6ff604a8dba5ff079726757036bc62d13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1839/magpie-cli-linux-amd64"
      sha256 "b89e7612c241dd7421b8af75ec59a999d1241f16469aaece77ccd8ae4b23c7b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
