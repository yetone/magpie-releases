class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3008/magpie-cli-darwin-arm64"
      sha256 "e853a32398493bd7d56271eb30fef0daebfa47f15e881422e7508601922e499d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3008/magpie-cli-darwin-amd64"
      sha256 "699fada1a099b621564a5e130dec64fa5a9472603920cc13c05b1253cb9ba494"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3008/magpie-cli-linux-arm64"
      sha256 "4134345d7be917cd6a0c1e7966ecb878497c03aba6e046c16b25ca5b185f8bbb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3008/magpie-cli-linux-amd64"
      sha256 "2645fe913e94d4e4f93ea7d99fc5d499a02ca605a079612fe5c6a24eda7e2eea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
