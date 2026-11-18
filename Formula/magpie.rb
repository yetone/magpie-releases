class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4455/magpie-cli-darwin-arm64"
      sha256 "f88005bbe949846ed1cdcb90a62088f6e497cdc44ca38e4f7a7c26b32e9f961a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4455/magpie-cli-darwin-amd64"
      sha256 "a7e6a3dc1947bd3b0c38f823e3fb5a2edbcad44c4586e2327f30e70fbc6bf9cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4455/magpie-cli-linux-arm64"
      sha256 "92893f74b4cbdc0082c990ac3a8ba0cbc2519b3355f33b23649a7b0abcd5539b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4455/magpie-cli-linux-amd64"
      sha256 "b297cb4a97da931390fefe4b3e69f5842b4daf3da8d10aa64a09589774e58647"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
