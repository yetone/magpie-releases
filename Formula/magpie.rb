class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.920/magpie-cli-darwin-arm64"
      sha256 "09520872e86d00f51c2e810ead62c2cc2304d05039a2a28d7c49fd60820154b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.920/magpie-cli-darwin-amd64"
      sha256 "6572c703340b76990f9a9f0c91abf3d76ddb4b0886f17b7f8ce3cdf477269897"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.920/magpie-cli-linux-arm64"
      sha256 "5ab5afdfda45362cc056285a4283bfbeddcfbef33e4733b36adbb0828c95d265"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.920/magpie-cli-linux-amd64"
      sha256 "e310c5b918a31ba89fff8fcbdca21eee6be156089792e0aad52f2930fccf9fef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
