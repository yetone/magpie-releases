class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4992/magpie-cli-darwin-arm64"
      sha256 "6dfa803f7d559c9c7c70490e9716ea1fc8ef7f3d0f06001dcfead19c8845c539"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4992/magpie-cli-darwin-amd64"
      sha256 "6057a3be8a5ba5dab9ef433777b3168b3523e9133bfb2b5231af573dc53ad168"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4992/magpie-cli-linux-arm64"
      sha256 "2b3067e0a90525052d8bb0d4d2889af90b31a6db28581a6afed3fdca085e379f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4992/magpie-cli-linux-amd64"
      sha256 "50b5d9729f66711940d9d00d5794b8ee0c937160539517092ad3d399387b7dd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
