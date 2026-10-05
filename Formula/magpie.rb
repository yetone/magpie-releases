class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.940/magpie-cli-darwin-arm64"
      sha256 "e7a31ed84f24caaddbb37a63e03bff74e6a597f6ff7f239b7579d3ead1cd888f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.940/magpie-cli-darwin-amd64"
      sha256 "11df2ae1244405e3aea7d47343e1a89ba44ca2229d353b70fa23db7b88be9b48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.940/magpie-cli-linux-arm64"
      sha256 "b275c90dbaf94cbe2d3c935b07b5f8cf9bbaee08a448599db8cdac0d8ccdd6bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.940/magpie-cli-linux-amd64"
      sha256 "df0e9f0b95c8ec053f1284e83b99961b27f8544dc377b9d9dbdf39d35f849a2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
