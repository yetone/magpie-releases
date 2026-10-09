class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1142/magpie-cli-darwin-arm64"
      sha256 "2cfc1e4c045f24784e5defd6d91cbc60b41d02f78a073c073c16d794030173e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1142/magpie-cli-darwin-amd64"
      sha256 "bf73a8e62967091127216f1a72b9b902a694df3dac062f605b13e8b4f4526782"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1142/magpie-cli-linux-arm64"
      sha256 "cdeb9a5735a8b03b85b8d93d19dd2994fc302dc93f3058fdef7eea21eb3e72de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1142/magpie-cli-linux-amd64"
      sha256 "49c95ee203282d4da31c3e3ba6869a4d89533097b72024fbf55de6dc0532476a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
