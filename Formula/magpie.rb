class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2241/magpie-cli-darwin-arm64"
      sha256 "3556a3ec82c6f36803d7e15969aea9d1a0d1e0a92e8394c9422d211dca1b6dde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2241/magpie-cli-darwin-amd64"
      sha256 "fb6569aaabe135bf9747474547fcc3dfca6dd8bfa66eb04c1639cf59b92b54c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2241/magpie-cli-linux-arm64"
      sha256 "cf150e60f2e023d467d45e7b96ec99c5f91000af61f3c4d9893ef67dce87818f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2241/magpie-cli-linux-amd64"
      sha256 "4b24d368616f6a692f485fba89e8583feaff3a2498611dac1afc5a27addc05a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
