class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2393/magpie-cli-darwin-arm64"
      sha256 "606dec27c96b936cde19222f6dd15c0f0d9ae5c7711d348a3a9d3e60444abfa0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2393/magpie-cli-darwin-amd64"
      sha256 "8bf8c76dc2c67368067b0bce2c1f1e5509ab08102d4ef8244ae9e4a1a08aed8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2393/magpie-cli-linux-arm64"
      sha256 "e7ca55dd41844f8dd60570489c8910517a997b8f138083585d64fe6170812df1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2393/magpie-cli-linux-amd64"
      sha256 "62d29d33d45fe1bce5c3afcc375c86a133e2316f0c5db838fe215be2a359bd09"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
