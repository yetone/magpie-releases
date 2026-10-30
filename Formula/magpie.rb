class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2201/magpie-cli-darwin-arm64"
      sha256 "bf02ee97da4701c78bee2c78c23362e9449492e8e072e723b4c1e8f1a548a91e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2201/magpie-cli-darwin-amd64"
      sha256 "b3fb9270a2d9dda2d1f0e2ae0b2019d661d01a951e3ccdd8c2039287646d667d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2201/magpie-cli-linux-arm64"
      sha256 "67cc42d4d7ba540659fd7a422f003f8a01e4d68a673f41757a48d949d7ddd6c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2201/magpie-cli-linux-amd64"
      sha256 "6c30ae72bef352096164df8cf9808a02cf7bcc56a884a73e2700309b9c8f9e6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
