class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3002/magpie-cli-darwin-arm64"
      sha256 "107cda80a1cd963126b210a098986eb443dacd7860eeecfad8da32cadbaffc49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3002/magpie-cli-darwin-amd64"
      sha256 "ed2d5e2138c410492b216314e40b9352813855e6edba6e2f38e2c45c7139750f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3002/magpie-cli-linux-arm64"
      sha256 "07000f5b6816fe9899b0b6f77ab797a9b1a0ec827f0ef4f2467a65984597da9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3002/magpie-cli-linux-amd64"
      sha256 "9f3691dd893eb81aab8359ff289c2e7d2130e96e4aa1f73c46df2c8459bff163"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
