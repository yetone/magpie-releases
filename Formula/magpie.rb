class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2906/magpie-cli-darwin-arm64"
      sha256 "bd4f6a53f3f8f34d9d28849345c0843149768989d9eeaf36c194e2dbefed222f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2906/magpie-cli-darwin-amd64"
      sha256 "cd6f63a5388261fea606f5e0ee67b331643c16af9ce216dc5a84b1b4d810326e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2906/magpie-cli-linux-arm64"
      sha256 "913fa80c56c3a0b04568b145aa1ee1c35b112eb5e7a91a095479b6fbc191783d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2906/magpie-cli-linux-amd64"
      sha256 "c4aa9fe03af7294da61e3906f002fa9f1788db0d0eda0898b4f08e8cce9c6976"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
