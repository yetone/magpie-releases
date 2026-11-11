class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3749/magpie-cli-darwin-arm64"
      sha256 "00b52a8686b1fc7a702a772c0e2a2a4a563be38e8c2c2c25dd880da587c09b9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3749/magpie-cli-darwin-amd64"
      sha256 "bea334bd9319759cc6e8fc8a66e464df60c242ba0cf4edde225ed87925fbeef5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3749/magpie-cli-linux-arm64"
      sha256 "5d62a3c66b8e9779b4a6c9c23c444a3a52a600167b2c86293277fee90b8ca785"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3749/magpie-cli-linux-amd64"
      sha256 "0572a92549641331a928d079a452e000d27b92b98a987debe1bfa86f9db45e32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
