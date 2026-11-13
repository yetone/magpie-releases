class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3972/magpie-cli-darwin-arm64"
      sha256 "990a8d4270872086fc610e4719240aebc54e5a3f3f7b7c6fc5fc2f304b4fa734"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3972/magpie-cli-darwin-amd64"
      sha256 "b9ecc6eebbcf0aa9a8cb354b901093683a5cdc8db09297d687ab88433cb5f6d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3972/magpie-cli-linux-arm64"
      sha256 "e1b49d26270e50cc709dda44eafed99f67632c13d21ef967651017e1d12024dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3972/magpie-cli-linux-amd64"
      sha256 "db35dfed7c0da1e89066f863d40d66f798fc75cb09eec2c0efcfac8515284484"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
