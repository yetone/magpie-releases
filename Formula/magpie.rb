class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2665/magpie-cli-darwin-arm64"
      sha256 "ba3c8121856e3132aca88314c7300cd20664cfa81b6824fec42b3c5a7c477e18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2665/magpie-cli-darwin-amd64"
      sha256 "7929b2af05aae5addf1842b3fb3814d8937453df7aeb5cbda84bfb8485b42806"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2665/magpie-cli-linux-arm64"
      sha256 "92c1c19296c49d5efe9b1d0e2eb59aa6b6361baba6ec3bbcc6e577d9aa413e30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2665/magpie-cli-linux-amd64"
      sha256 "54b10b7fb8d65050ec035f99015cda0c24f2653ae93ffd335c70ad13be133ee2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
