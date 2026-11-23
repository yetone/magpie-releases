class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4687/magpie-cli-darwin-arm64"
      sha256 "0e749f946222e5aa331dc4373704988f2d0519576a6c2f7e5c44680f01beb457"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4687/magpie-cli-darwin-amd64"
      sha256 "69b566fb35623c5300074d3f9433660dd3b55e2d43b9f5d25814aa931ea18bad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4687/magpie-cli-linux-arm64"
      sha256 "af18cf2cb88b03a3f578a4159532c0db13532607878ab559053c1f71385513dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4687/magpie-cli-linux-amd64"
      sha256 "063e3de0560b2ee995088c040d8b7b93f6736311f91d90ced60464cac35ddc2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
