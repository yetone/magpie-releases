class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4918/magpie-cli-darwin-arm64"
      sha256 "3f953434b75c997fd01561b5d5a1e58fdfacc046c82461fcef9f845347dc3bf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4918/magpie-cli-darwin-amd64"
      sha256 "9f471565e89ba415df42317277067432d17d543d521557da3b7dfced6d8c17c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4918/magpie-cli-linux-arm64"
      sha256 "fa230546072aec3a7c9097196c8d67986326c57d43d764ba611dde60601064fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4918/magpie-cli-linux-amd64"
      sha256 "f1d613031dc0b40c0c574c95037bb6fb057108750b0d8850a57e0694f6f527b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
