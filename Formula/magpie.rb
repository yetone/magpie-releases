class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3826/magpie-cli-darwin-arm64"
      sha256 "8de40f7d136a3c4054212fe65c62cafb412e8534e4e7a30b6786725b58ced49e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3826/magpie-cli-darwin-amd64"
      sha256 "a6fe1b3e3fd9900ac25c8f3631ab8026d6a39e0fb6d636526227d0a1656301ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3826/magpie-cli-linux-arm64"
      sha256 "ec177290a28d9a6a2faba0122867614c1908e0ff32e466844c32411d9089b906"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3826/magpie-cli-linux-amd64"
      sha256 "d54ab2f1729af39a5e20ae8753da60ce76fbaf1783f200dbcd7d4d399e6a65c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
