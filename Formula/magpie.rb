class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3253/magpie-cli-darwin-arm64"
      sha256 "d32ec21bdeed3aae510e089dd655214cb8281fe46d3a3394a513bbac8f55c35a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3253/magpie-cli-darwin-amd64"
      sha256 "b6a2aa3ab03b6d31f9b2dea9951907967acbcca742016ea74ccddf65e28d7e4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3253/magpie-cli-linux-arm64"
      sha256 "3a0994d27113b86848667a508a867917a5041b18879d6d4350abee8aa58f6f85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3253/magpie-cli-linux-amd64"
      sha256 "536800e14a4131417e26c600f1327d414db883860a8303464e2b4d46a57bc83b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
