class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3904/magpie-cli-darwin-arm64"
      sha256 "d51c2221c91f7c349b9e948ecbdb16d4432ec18327a9c823409288117028b2f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3904/magpie-cli-darwin-amd64"
      sha256 "515bb22412205c674be57c6f4d8722cb08b9081ea38a28c041533720cf1a8533"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3904/magpie-cli-linux-arm64"
      sha256 "565cfd3fa1b86c24ee9ab0cd7f240cd511ac8cd4b707699171846880893123dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3904/magpie-cli-linux-amd64"
      sha256 "c0cead9f61fe3e7b2787c8c68466916a54bba394bda50871435d52b1d24fee1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
