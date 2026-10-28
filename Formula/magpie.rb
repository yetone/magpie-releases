class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1865/magpie-cli-darwin-arm64"
      sha256 "9a6622ed52291ec55243c3ca1277a54524387675e0aade65a4053d9f857c7d63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1865/magpie-cli-darwin-amd64"
      sha256 "b5e4b9bbf7b73b6969ddc449efc28133936a52cb89418713377a92840cb85a6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1865/magpie-cli-linux-arm64"
      sha256 "e8064a6058a451db54282d300ac3527975909e89f29f5602f01002e6e07d2952"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1865/magpie-cli-linux-amd64"
      sha256 "91444ad4088d03976deee575246c05e309cbd115d432fed51ad5346967dcf376"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
