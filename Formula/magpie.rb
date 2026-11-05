class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3033/magpie-cli-darwin-arm64"
      sha256 "856fe544f591495eec914719abf596040d85dcfbc7a6bbc0d84153940159a2ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3033/magpie-cli-darwin-amd64"
      sha256 "e1e7f9fe30e0ad2ea759451adff3ec7c8c82131918b23b6c375a9f8f6b851554"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3033/magpie-cli-linux-arm64"
      sha256 "b48ebe53f6872cf4a528e00e60fc7a0ec953ad626e26e2d70f5efed5351bf4d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3033/magpie-cli-linux-amd64"
      sha256 "f080d094dc2ca6c20a144ca4c5c1d09d45075b9a4f8d06a7d842e22c78406385"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
