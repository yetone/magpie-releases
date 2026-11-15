class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4231/magpie-cli-darwin-arm64"
      sha256 "a2f267e80694c1260d22b78ce6ab7f4dda0218e6b5e33b21a278d373873129d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4231/magpie-cli-darwin-amd64"
      sha256 "9549ecfcc50a3016981828a7c99ce06f4188a1ebffb25b089510919ad6deff62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4231/magpie-cli-linux-arm64"
      sha256 "10a9a20ed21e689908508a3972daddf53121db0d941731cd8d2a7742868427a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4231/magpie-cli-linux-amd64"
      sha256 "5339279eeda87440f78dc0c22888c5c582be8d52694239a9e4758314caaad134"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
