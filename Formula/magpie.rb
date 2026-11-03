class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2771/magpie-cli-darwin-arm64"
      sha256 "0d50661dce76629dee5d9e4dd799d435397093443f1a86950e8b7e8321557582"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2771/magpie-cli-darwin-amd64"
      sha256 "148c71ba7a082a9a12aaf7dccf848ffa72cd433517f8a4e08c7470c563bb3006"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2771/magpie-cli-linux-arm64"
      sha256 "572930e3411936c946711f87d9173ba144552e9582431130175ecf1f0a0aade5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2771/magpie-cli-linux-amd64"
      sha256 "689dde55287bb28d7b95b90d01d0fbdc7120b694bd94c8ac93bf12c8b109e7ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
