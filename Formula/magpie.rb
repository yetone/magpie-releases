class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4764/magpie-cli-darwin-arm64"
      sha256 "b856a61f22b57cb90b1c71e12329e3e9d8264e0dcce6650415d892de449fcb67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4764/magpie-cli-darwin-amd64"
      sha256 "66d6501e07b8cd22e09a7b2b391e89b51f75c60175a8971662199d1cf0ea0356"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4764/magpie-cli-linux-arm64"
      sha256 "5ef853860dfbe619c47f79a373fb1cbb864024f1681f8600532fdb845e470167"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4764/magpie-cli-linux-amd64"
      sha256 "09af044aab495cbe03f59c2e2071646589806637108c46ccd29bf718ab6fb0bc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
