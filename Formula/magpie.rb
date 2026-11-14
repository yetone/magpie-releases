class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4174/magpie-cli-darwin-arm64"
      sha256 "fc12f4e2016152ef853fdaad131865b4be7130b5bb1c277bb0a0110669be57ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4174/magpie-cli-darwin-amd64"
      sha256 "6e6ad277d2cb8703899a7ff3bc42d94b9b157237a0835dbd391255bf02c41116"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4174/magpie-cli-linux-arm64"
      sha256 "f0f2060ee698773297a1ea8430b5a5dbcea7ed845073687d59c83e5ca599b811"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4174/magpie-cli-linux-amd64"
      sha256 "e17d95bdc921ca5cc26fdf26ccf970d4b1a981fc0ec567b6e443b04713cc2566"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
