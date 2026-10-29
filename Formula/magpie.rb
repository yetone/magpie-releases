class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2029/magpie-cli-darwin-arm64"
      sha256 "1de9edd765043cbc0f3038d892aa97c10facd79232bdc6239bb17b4a475bd059"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2029/magpie-cli-darwin-amd64"
      sha256 "e21ad7c3c34682a61dcca28a0f26e31fed8e21460e55ac3db0c3f2a0cbb0f47a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2029/magpie-cli-linux-arm64"
      sha256 "1908b4eccb78a760ad9b6f2834faf74152eb812aad81ffdd0a94cb64e313d734"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2029/magpie-cli-linux-amd64"
      sha256 "35a7169b132537a1255c7ab92c7e250df6e1602ab4228dfa9f62fc4ec2d325b5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
