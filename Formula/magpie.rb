class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2549/magpie-cli-darwin-arm64"
      sha256 "a4a5e5588b6830ffb216a9f686172731ab2c0b91fcd5bb7793a7cc979821e5fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2549/magpie-cli-darwin-amd64"
      sha256 "8ad3a3bd496b2d87c5d81ecadff85cc90752c67d147d4707c10414820c1964f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2549/magpie-cli-linux-arm64"
      sha256 "c84e6eccd3b8ed8cc14ab91f1930f7fd03441856d70d9f4a72e7bb1aad4240ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2549/magpie-cli-linux-amd64"
      sha256 "7df002c59a6a1b8172fb875ca78122a7afeed49e0831a1cdb06e23c7d95df535"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
