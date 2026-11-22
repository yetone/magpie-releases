class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4677/magpie-cli-darwin-arm64"
      sha256 "71cf46b21b72a729f401f4847a9be72198d5e5ec79faef9e5860148489fd32e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4677/magpie-cli-darwin-amd64"
      sha256 "cd0004d0223659908ee7aa39c8ba8ee672d69e5802a0d05b45b8bc63acd605e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4677/magpie-cli-linux-arm64"
      sha256 "6eccadf718609a7ed406c519ffc54ab7aa77aaf79b6008aa27b1befefae70c29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4677/magpie-cli-linux-amd64"
      sha256 "b62da2366989774f001e28acfb79244056fc2c0b31f3fbf5196dc87157560645"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
