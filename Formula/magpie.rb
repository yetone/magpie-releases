class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1014/magpie-cli-darwin-arm64"
      sha256 "c07e94dec09040071207531bbd1968be3caf6e62fdde3419763f8ab0dc8c5b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1014/magpie-cli-darwin-amd64"
      sha256 "7045760a492d06e76b4f242b70befc5f32f7621a6323eea6fe032173ead65d9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1014/magpie-cli-linux-arm64"
      sha256 "e20ec56bb1eb947d29cf7cc89c70e35556334d4e8cfc38fdaf4a6e445275807b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1014/magpie-cli-linux-amd64"
      sha256 "29968617cc89a7149ae419c60076d18deeeb66d0b41c7b3687dbfa56d95915cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
