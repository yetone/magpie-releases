class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4651/magpie-cli-darwin-arm64"
      sha256 "b4762c5d6a9b5a4b8628866de634531f343dd4c2d85e38b1f905aaf4e9e361f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4651/magpie-cli-darwin-amd64"
      sha256 "0ea6dcf2249268578bbc89a263cd31e0ac5c00a44918dc9027f50bc66e5f7bad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4651/magpie-cli-linux-arm64"
      sha256 "6776c8d32435a8cfa1678029a8d2fbdc5ea11dd4bfb8f9b56feff314c423bd97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4651/magpie-cli-linux-amd64"
      sha256 "d21b4dbc2fb0fafce819bb8ef257062a9cd7e242146423c805bc9d098d4a8068"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
