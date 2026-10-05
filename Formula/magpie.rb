class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.980/magpie-cli-darwin-arm64"
      sha256 "d578aaf711c330e27c3252074e99acadbac7ed67c1a3788c5ff55d87e85706a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.980/magpie-cli-darwin-amd64"
      sha256 "0d49038eab1cdeb940c1cfa635345f922df524f0a336d07c1fe84620997c7ebf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.980/magpie-cli-linux-arm64"
      sha256 "bcefd5943d6c9f34a5fdb50a54721253f8fc52c7c826c6a09080c33eced98958"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.980/magpie-cli-linux-amd64"
      sha256 "2d6e089b45233e6108fed6c46da0fca5fa8a680ec02b78f08f1f3124d7896745"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
