class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2578/magpie-cli-darwin-arm64"
      sha256 "fc720ce9063346d14c8bbb789c356cd0019b2226c2cd9e019a3724d07e30c589"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2578/magpie-cli-darwin-amd64"
      sha256 "744cb2951c9e5199584898e92be02cbeb13b28891412f6735435a7bef4f6c2cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2578/magpie-cli-linux-arm64"
      sha256 "2e71bd823b7601c4a2e0ee0dff1f845c07f944ac1ed812e99326f4b24f514c06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2578/magpie-cli-linux-amd64"
      sha256 "77698c44826000480b5368312a6bc99eaef0bc071c75322429ef9aaa53e297cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
