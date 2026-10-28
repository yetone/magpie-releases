class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1856/magpie-cli-darwin-arm64"
      sha256 "0ee8e65d7f5ecc6d1908352afbdeb745f980b9ff0e67cd932d97f04ce2916445"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1856/magpie-cli-darwin-amd64"
      sha256 "ff1192b0e41209e54d26da22a6244e0b11c27dc337d21946a6ce0fea0de0e16f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1856/magpie-cli-linux-arm64"
      sha256 "cd3fc4be06a38f56cfaf5ab3d166c67d8fbbfd1143e6391bc87e1b67a6136dee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1856/magpie-cli-linux-amd64"
      sha256 "0a121b862621aed8f24655eb9f370947f59591853470b3d7843cf339669a52f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
