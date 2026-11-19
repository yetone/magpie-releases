class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4559/magpie-cli-darwin-arm64"
      sha256 "5e511aa65cce64ebd0788154630e0f0b669166ea8bd23291eb9fc55a078c76a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4559/magpie-cli-darwin-amd64"
      sha256 "58b57d5302b4f7dcfa81141a05079a218cdd7513bce56b88d0a406f170515733"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4559/magpie-cli-linux-arm64"
      sha256 "cb8127cb26a2e492b63517474122196adaf6dae835008fa256e0a4be0b05db79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4559/magpie-cli-linux-amd64"
      sha256 "0460da5833792f1ade9c59fe8c864618e8536a63816d418ad246e1d89bc14ebd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
