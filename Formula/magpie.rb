class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1863/magpie-cli-darwin-arm64"
      sha256 "c66a4ff071804ca01ca443f5a3fcc53454212b4b3e0086ea0a427c6227ef5deb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1863/magpie-cli-darwin-amd64"
      sha256 "c7ea2d1a37f9ec378f3f8a149fe3eecff41f5dd14d1b103c9d66e09c39971afb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1863/magpie-cli-linux-arm64"
      sha256 "f61b495a31f0b0e6d376e755009091e7ed234d858afd458f8aa529d4e3c0a365"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1863/magpie-cli-linux-amd64"
      sha256 "95e92be8ab85fa02ad26dcd8ec6899a7376cf24a187a69d69d09916ea13a22f5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
