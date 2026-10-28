class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1873/magpie-cli-darwin-arm64"
      sha256 "42ad9556bf779be31da979775b2e0c77c2234a54dd1818049448f961cc4565c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1873/magpie-cli-darwin-amd64"
      sha256 "c2c6513724fc430f6154676cbb4de1ed1e13fc31c899918f3722c8f2d715abc2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1873/magpie-cli-linux-arm64"
      sha256 "1f59ecf4c42c135c5d3e5df18379304ca7d35f4f7b29397e0800df4f05543fb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1873/magpie-cli-linux-amd64"
      sha256 "03de00a19e4f6146b0c997c1e3d36f6ccca9fefb98c2431f31a247b48b128423"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
