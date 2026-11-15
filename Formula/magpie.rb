class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4240/magpie-cli-darwin-arm64"
      sha256 "bc49e16c94d74088616210bf57ff77b703e84a1c017fe9757642c44c0e438c7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4240/magpie-cli-darwin-amd64"
      sha256 "0c48a3cda5478e688a54bb01225d04170b7bbd5dd592ed7671d148f4aaf8abd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4240/magpie-cli-linux-arm64"
      sha256 "444dd0c3c9eeb15d6800efe185b0333c310a3b29c970e70cd29f1d2a4826bb4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4240/magpie-cli-linux-amd64"
      sha256 "873f4595f5b69376bfef835801504e1cf08491e8384eb3bf30fb80003f548f8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
