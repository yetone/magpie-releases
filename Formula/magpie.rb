class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3396/magpie-cli-darwin-arm64"
      sha256 "09dfe99e9559c6462a45cd48ac5124113500430e62b19b45d1ef9904b058db86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3396/magpie-cli-darwin-amd64"
      sha256 "a72a4fca200f9f15cbb1f91282d2d617515141cbc70bc87c403fd043ae1fb2a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3396/magpie-cli-linux-arm64"
      sha256 "2cde31c37c77b3072cfa7056c9e9d0483727a1f400f3933c922026009b61afec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3396/magpie-cli-linux-amd64"
      sha256 "a7f4cd54fc18698105fad7058b90d53c640fd5217ae2f765a0062e7a40837a58"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
