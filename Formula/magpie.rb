class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2157/magpie-cli-darwin-arm64"
      sha256 "6ce13d285f3dc7c795dd21788dc82d4fe3e45b10cd84e064bf25b61ede8c36db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2157/magpie-cli-darwin-amd64"
      sha256 "8f2c6d658743b1b3126cbcaa56b22a60e338597057743f59c1a1ff122f966ca1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2157/magpie-cli-linux-arm64"
      sha256 "faf2037a23717ad31db2956dc0598080d8019b0a0f70464f23ec9dce46bb08a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2157/magpie-cli-linux-amd64"
      sha256 "7ffb7a0841f545162ada45c2da23c991151d1d4888d793274a60c4e8e18aadbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
