class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4241/magpie-cli-darwin-arm64"
      sha256 "d0a5ccdb2b8e89f49c84675db627552278c37e333f8cad24e0ff7aafa63fe97e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4241/magpie-cli-darwin-amd64"
      sha256 "decdace79dd6422718edc2fc009735fcc62fda5b0a4283160cff616658a7f2f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4241/magpie-cli-linux-arm64"
      sha256 "5dc415430421a22dfc59a97538d027a0263893306051928d8098168ba718a7e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4241/magpie-cli-linux-amd64"
      sha256 "d936409959a5d935efaffeb923f74306e18197f11b203c6fb6537a1b373396ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
