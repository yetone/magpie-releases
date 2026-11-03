class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2838/magpie-cli-darwin-arm64"
      sha256 "adb8786830d7ed870c1620f070d6d45cc11df094aeb17ef384f84a880565ebf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2838/magpie-cli-darwin-amd64"
      sha256 "8ea4f4dc611fed8341fedb9489009d4fb5a3a9759bc6e6e1e0a8f393d4f7affc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2838/magpie-cli-linux-arm64"
      sha256 "d92ff22506aeac1b3f0942aa5aab0de5c39f6b0a31607bd7b2b3d295259a9615"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2838/magpie-cli-linux-amd64"
      sha256 "40cfbb7cbbeb591a9cad3a8507eacc3efe01c9e3c0d4df601af65af5c975aa95"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
