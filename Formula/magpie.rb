class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4132/magpie-cli-darwin-arm64"
      sha256 "94c8dfa0a99e7438bcb439e5eba02923d529432a64e39852e37118c5361e9724"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4132/magpie-cli-darwin-amd64"
      sha256 "bc9e13f8257dc889635e4a7fb570aca9603e201930e4b7a0f1ed63881fe58ee0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4132/magpie-cli-linux-arm64"
      sha256 "fcb9a9cdbfb6de08aa6b28d13e970fd95485f17ebf3a0b0f5a8ea473afb3cda0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4132/magpie-cli-linux-amd64"
      sha256 "7acc7330ee17e25bb0d739bc6a094b0104c9e9518de2e8b8cf36d9e6441618fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
