class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1165/magpie-cli-darwin-arm64"
      sha256 "2b5c7417996bd1032f25b98d4af9278b06e60e227bc92eb90e7b38e086702156"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1165/magpie-cli-darwin-amd64"
      sha256 "d80bcfec8806c32de3ec914c8c35956d4dc42a711553f0df2d9007546f31a5a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1165/magpie-cli-linux-arm64"
      sha256 "ca3584767fcd9fe2f31fac59c0fcacdcdf24d093a42215a592146c2c35bc1499"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1165/magpie-cli-linux-amd64"
      sha256 "7d87e70556149420ebe1301b0e6518ad30c7816b030822d64b815b8d952fa316"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
