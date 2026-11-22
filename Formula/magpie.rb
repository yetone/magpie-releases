class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4672/magpie-cli-darwin-arm64"
      sha256 "3b688c6524dfb4709cad4edbafab0f1f57b6297e6f96b92c68081f903d4a974a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4672/magpie-cli-darwin-amd64"
      sha256 "9719476e9d2467076befa99916ad019fc85ec9051a13831cad675ed0812d918e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4672/magpie-cli-linux-arm64"
      sha256 "b27c49ee701c1b0e0d235ac762371e6fb751ba197ffd960aaad2c30d66a8a702"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4672/magpie-cli-linux-amd64"
      sha256 "5c5d9c2aec668e642dbfde7096b110c31edf1452c78656469a2325f9179cc2a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
