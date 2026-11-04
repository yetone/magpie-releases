class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2910/magpie-cli-darwin-arm64"
      sha256 "6de1567c37f1c6ee0f4ba016807df8aed5cb7141a26f864861bc6909bae61cf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2910/magpie-cli-darwin-amd64"
      sha256 "808bd7718d39ece5f0e232eb4a00f8880f0d642fd96989cde739fc5e879fcd58"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2910/magpie-cli-linux-arm64"
      sha256 "f280ee9180bd512ff37806d5048c0924cad370a36e3572f6227c6bdb7c0128b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2910/magpie-cli-linux-amd64"
      sha256 "1f4ff64b2a8089f6658bc54e5d8c630eb88641b2758c6122e84c71bddcb532b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
