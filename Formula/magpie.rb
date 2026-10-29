class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2019/magpie-cli-darwin-arm64"
      sha256 "cf6fb821fb725ad0c2f16939932b4a0001e1334fdae2eb66087ab1a39a1034f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2019/magpie-cli-darwin-amd64"
      sha256 "0d78de3e8c13cc8665a6d3eca9108b685b2f9181e16d5fefd4396142defd12a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2019/magpie-cli-linux-arm64"
      sha256 "e7652d36156d51f9802bf0d84310b88babc7dcaaaeff46fc8b51bfffb27913bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2019/magpie-cli-linux-amd64"
      sha256 "00f9a9da2d7d2c61bd1f213ec27286aea6267b2b244ddb422719e4b25930f1de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
