class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2088/magpie-cli-darwin-arm64"
      sha256 "188be8c775735b77bd5028f48fbf8432a7d9a273e9a5153441c14263ba65e793"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2088/magpie-cli-darwin-amd64"
      sha256 "ccad73cc7f26138571e3381644309353d9d12871e13048d62b9c5f32bb1b5e4c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2088/magpie-cli-linux-arm64"
      sha256 "dc4eb9b172a07995a239c0ccd343c13426b9fe6b777ed41e2f2dfd2b00b1ba75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2088/magpie-cli-linux-amd64"
      sha256 "0f081473189678670fc7a9fe70536ba21a580af022fa862a976a8dba9c100e44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
