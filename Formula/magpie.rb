class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4885/magpie-cli-darwin-arm64"
      sha256 "c265f77f473608b3ddc829509aa6c11ee96288b8134be26fbef8fdd0b9e25c56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4885/magpie-cli-darwin-amd64"
      sha256 "0677d915e24b5f1ad0006f3f9a0dcd3b56fa9166292b81e7de531b306cfb0ab8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4885/magpie-cli-linux-arm64"
      sha256 "5b169c087760dc7a23f6a05d4af02dff5df54fb87744b7e059989811c46e7452"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4885/magpie-cli-linux-amd64"
      sha256 "769d8a1bb0df841b8834146dc02dc49cb17c09fd63cde443b0691d0b16924efc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
