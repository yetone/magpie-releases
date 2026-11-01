class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2507/magpie-cli-darwin-arm64"
      sha256 "e81d147817ae1401731f701f661a13de4a416cfbbe18a0938fe61bfc328042cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2507/magpie-cli-darwin-amd64"
      sha256 "7527f3998670a0b780a0b3eac800111e7b694bc3b39cd0e4f5415e1f0b79d4db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2507/magpie-cli-linux-arm64"
      sha256 "0782db510376932c9ea2892ab3ab594bbdd516b101fa136d90496f50b0facbee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2507/magpie-cli-linux-amd64"
      sha256 "4d3298e32b9116c654a3ed94d46d581e965a952401a3cf847417e64e92f9fd1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
