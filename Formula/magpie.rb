class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2334/magpie-cli-darwin-arm64"
      sha256 "b99fbd4c3229863b9d09395af91b64c2fe2d2b2c7631e8bf207a7df09b8323a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2334/magpie-cli-darwin-amd64"
      sha256 "107df2422ff18123b3bf3572380b76ce15b6bae6ae22de0ded8f26e3fef8fdb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2334/magpie-cli-linux-arm64"
      sha256 "3cb0a0a799472145619ff771925bef2cb1317cc7090f7d2b28fbfb6b88113cf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2334/magpie-cli-linux-amd64"
      sha256 "5f976e6c169a34f8dca4d4385085c915d5e1cbc3c961774c5a9641a7270aec9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
