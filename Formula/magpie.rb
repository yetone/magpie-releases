class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4592/magpie-cli-darwin-arm64"
      sha256 "6a693f7743755f99017ee2bbb778b8b267a13664e47f56823d93e466719f1178"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4592/magpie-cli-darwin-amd64"
      sha256 "6b62664a8386369b70e8c0c47ac479a3ebbd07a7e9c48711f26169e85b7e5fd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4592/magpie-cli-linux-arm64"
      sha256 "15d3b3f588db03e942f4ab6db723843ec7c4fb103598abb83476d4d99c3636f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4592/magpie-cli-linux-amd64"
      sha256 "f13c29b3329866cf9611d0bd82f0768df7f9b126a9dd464274bec4a029d7afe8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
