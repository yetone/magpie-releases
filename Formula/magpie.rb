class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4146/magpie-cli-darwin-arm64"
      sha256 "64d2cbc93b888a17910c33bab5670a1685f0aa61c8058a7cdb7ef59daf0bea8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4146/magpie-cli-darwin-amd64"
      sha256 "59752b09c2f52c47b643d605255d7b56334eacfcc864daf3f66841791c8753aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4146/magpie-cli-linux-arm64"
      sha256 "db33152ab832259ac90b2c22a7de00e65ef845bd2e7c42b6b491514a65132bf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4146/magpie-cli-linux-amd64"
      sha256 "6d811170172b9a11e54cdbef30b5601f386efe2af36ae20a5d11bc515e71e82f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
