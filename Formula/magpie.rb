class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3390/magpie-cli-darwin-arm64"
      sha256 "041c32b3df9d4ba4b50db65a32f1ff9ff089fef018cde4fb46bd6b62a0898a59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3390/magpie-cli-darwin-amd64"
      sha256 "10374906ac6b44ee282d994867e4dfa0c88459ddd0938067068ead32b38b177c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3390/magpie-cli-linux-arm64"
      sha256 "1f708f18ad0109af8a8bcbc440b97954c88be60c90ee21468dcee917d76b1bf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3390/magpie-cli-linux-amd64"
      sha256 "6b612fa59f084d5342aa7517246b475ef3f9b188c4cfe54890e68e9588d2e167"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
