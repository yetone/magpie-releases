class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3943/magpie-cli-darwin-arm64"
      sha256 "84cbce3132156c713f6fa847223760aa99799979e30ac5244779d2a4c6930fd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3943/magpie-cli-darwin-amd64"
      sha256 "ca6b30c0abcb02a7d9446b727478e99f861c1bd151ad58cbffbbf08f54c35f8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3943/magpie-cli-linux-arm64"
      sha256 "c4ce53bcdfd73892a9bc494027245cd1c81bc83f330e7fbf9bdb223167efcca0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3943/magpie-cli-linux-amd64"
      sha256 "4c0c60a5ac1b6e8a298bbe019c72451a374254a3c39992ba5cce3489b944182b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
