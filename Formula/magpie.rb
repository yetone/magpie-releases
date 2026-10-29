class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2072/magpie-cli-darwin-arm64"
      sha256 "96d01c45c86a38219e0d8424f021e994ee06f0bacfbfab145176764fcbb3a3c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2072/magpie-cli-darwin-amd64"
      sha256 "44fa8576b2cc4b0d621e2bb56f8bb6e8183b85a6d0d372e5c8d1630e40f6fce5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2072/magpie-cli-linux-arm64"
      sha256 "c4208c9510083c50d38116fe27e0649133745776bb6eafae0e0fdcef9b38d41b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2072/magpie-cli-linux-amd64"
      sha256 "861d108154a891655388efb330c8f83d52a39f15d0547c874d24d1ea7fa57c16"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
