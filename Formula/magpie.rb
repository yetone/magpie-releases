class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3077/magpie-cli-darwin-arm64"
      sha256 "3435c6d602a83fad1ac7f7a2d8a9b259d501fd79a59c5f5c256c810cc1e337b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3077/magpie-cli-darwin-amd64"
      sha256 "a4d27fbad7db29aadc0af9c7c71508c7236fe4166ed7b0eff8fd1cc42cb2e358"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3077/magpie-cli-linux-arm64"
      sha256 "0a65ec9e05e8627f8d4df05b41ec5f7e428a55395a82f564a4ea437cc5724e7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3077/magpie-cli-linux-amd64"
      sha256 "60fbfbd1e29639b2b3e68bb66777c8abb10a02f796d81d323430e356c068b16e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
