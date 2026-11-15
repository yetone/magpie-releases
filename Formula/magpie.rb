class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4278/magpie-cli-darwin-arm64"
      sha256 "50392edd020fabc11312b9603fe7e4158857125897ad02bd2ddc3fc32908578b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4278/magpie-cli-darwin-amd64"
      sha256 "e15d46b9a3ea5ecd5b65e6db90244197951151920ca5fe35582285c521e2fe93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4278/magpie-cli-linux-arm64"
      sha256 "09c917678a68adf197ffa0bbc328113dffc538f32b46d1004a3138ec4c944107"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4278/magpie-cli-linux-amd64"
      sha256 "ec5fef7bb37c10607d71fa653fdc9ab7d8f54b53c96306cf65eeabcaa927f0e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
