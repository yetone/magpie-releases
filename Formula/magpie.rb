class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4597/magpie-cli-darwin-arm64"
      sha256 "6699d4b4b3f6d791ea69447de69d22546d1018ba51763b6836c59896feeeb611"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4597/magpie-cli-darwin-amd64"
      sha256 "5837d359194da39d0fbd143aa0f67d5a93123b36aa5122031317f63d301fda7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4597/magpie-cli-linux-arm64"
      sha256 "5e4dd89b63833909d95d58af735438728a8182e48a8499548768f215371d07c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4597/magpie-cli-linux-amd64"
      sha256 "7156592a895e20d5c693fde22b80d80b1f22107971b00fcbfb57f85ce828cfe0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
