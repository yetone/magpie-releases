class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-darwin-arm64"
      sha256 "f8f46cd8ac45aa8027553d5cd7b7e0b238d6812d7cc68156c38273033c6c6153"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-darwin-amd64"
      sha256 "2c44647f86bcf5155bd0bc60005b768491968507d42aac7fdffc12300a5d47e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-linux-arm64"
      sha256 "1732c3cc880617c288cb14c42c29820064e5124832a77db85bd79b6e55839403"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-linux-amd64"
      sha256 "8d67ca22a3f6131e73e2fffb14c9cab3faf5da9db4ee6348948fae90049ebaee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
