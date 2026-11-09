class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3419/magpie-cli-darwin-arm64"
      sha256 "e160bd345f199a1da746fc5c86e2eba17cc18479d39a41b8ec1f1e431de900d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3419/magpie-cli-darwin-amd64"
      sha256 "048b152da1502f9cb97c8eb57873a32edb1c22761c2c6fc827c268c945524ccf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3419/magpie-cli-linux-arm64"
      sha256 "d75432dbc3564c933c5b0ef8a52e8b644d5b07c16adbfee51366470e408535c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3419/magpie-cli-linux-amd64"
      sha256 "83f47ff506b1ddbc4de2d4faf789735881a221940a40a6fb4491e4f5bcba1789"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
