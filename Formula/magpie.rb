class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2315/magpie-cli-darwin-arm64"
      sha256 "2e48aa51ab91d899b8e71f1a0f282a1e19f23c9416cd4671209aae369480eeb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2315/magpie-cli-darwin-amd64"
      sha256 "ed673f460b6c6463371b12acac28249225255575c454bee4bae03c8f04912fe8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2315/magpie-cli-linux-arm64"
      sha256 "40c8aa750298ccf4db92cc36c9f9a5f5ffc807e2881f255896f65245d6b655af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2315/magpie-cli-linux-amd64"
      sha256 "b301f38d27e0ed1bff94a43950fcf77ae4e5f57fc5fd40e43f086c187251135c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
