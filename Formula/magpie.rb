class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4679/magpie-cli-darwin-arm64"
      sha256 "f061ea103805b2dee2f4f39d4d52a727bfa25a6feaa77668f6bc0fc13e0290c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4679/magpie-cli-darwin-amd64"
      sha256 "83579a06b896f6d75d17dfa43de69a6760519cefc40434fdcc2999ccc4c9ff61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4679/magpie-cli-linux-arm64"
      sha256 "9a1853a0eb5fa8e3648e8acc8b1f5a2b426f9d1edd61e30352d66b5ec37c89cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4679/magpie-cli-linux-amd64"
      sha256 "52f105129c3d5bde279c1e1176b7c6e17fc332cb24475ba12df5b03cc3060839"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
