class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1155/magpie-cli-darwin-arm64"
      sha256 "f60a01dcd19294629bed24eb8506373ebf06c5c022ab6bf8af6a8ea3331854dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1155/magpie-cli-darwin-amd64"
      sha256 "025d8a0388823781cf9042bfb2e10198eafb064d790d39a2cc9b6220a4e2fe2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1155/magpie-cli-linux-arm64"
      sha256 "1c339db4e4aa076025dbb15b2ed886f57aaf7df4d40134d3f5a8ca2f06dcbfac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1155/magpie-cli-linux-amd64"
      sha256 "93bed2a41b3f3bd2f6678a41be92f5c27f777e8d1b97dc04fb8ef1a0daa6f791"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
