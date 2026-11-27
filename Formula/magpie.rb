class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4929/magpie-cli-darwin-arm64"
      sha256 "9ad66ecf2e0968f3a2b2eb9a5672f02a915bcac578eee1bbc075086f95621954"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4929/magpie-cli-darwin-amd64"
      sha256 "5ab46497da269d9e00df1f8bc6c2db691a531988f40fdb76b212b154c610c607"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4929/magpie-cli-linux-arm64"
      sha256 "9f2b2a80354d62a20a5ba2c3a74da08546cc94461a9667b2fb17cb43bee009c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4929/magpie-cli-linux-amd64"
      sha256 "1c4c4b3c1366314b4632783640abb956af5693b3f4dd8c32dfde196e15998747"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
