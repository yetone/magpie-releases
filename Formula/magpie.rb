class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1859/magpie-cli-darwin-arm64"
      sha256 "1988092ba9b176f7d6946e2b28e15f607d913f61a8ba421edcd7fe3986cde486"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1859/magpie-cli-darwin-amd64"
      sha256 "bd90aeedc0ad934ccbf856b31e38276698900120b6aa4e583741a843d0351ee9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1859/magpie-cli-linux-arm64"
      sha256 "daffe8d48972115b8a57382eba78926873d3b0e3be2d17403eb9f139c1d13d70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1859/magpie-cli-linux-amd64"
      sha256 "d7fcbc302598914dc6938ff9c6b5ecccacbc05a52f825597f1d111e5b0f9be85"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
