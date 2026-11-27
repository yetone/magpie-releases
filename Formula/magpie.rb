class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4938/magpie-cli-darwin-arm64"
      sha256 "5864f259fbbb4216c8966428280c3a9ffefd2a0f1222a494aaba0106d09e097b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4938/magpie-cli-darwin-amd64"
      sha256 "2c5678eec5f56c0fb60c01f52b0ed8a713ee95ec79f630ffb34517dd5e8da63b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4938/magpie-cli-linux-arm64"
      sha256 "9181ad44e9cd1b7ef3286f713ab1fb5dbf7311c1f4c55d414c165480a3704dac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4938/magpie-cli-linux-amd64"
      sha256 "c562b9fb2d42dc3bc091a2b54eef2990d7199091d7826e25082a39961083ca44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
