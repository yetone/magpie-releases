class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2824/magpie-cli-darwin-arm64"
      sha256 "bc479820bb55f49722e0419aaf0c986b03d715c0e6e937dfd288cb6c1bf559e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2824/magpie-cli-darwin-amd64"
      sha256 "1275aacd3f57cb94611ddf9bfa781a05b50f01047f4f55ce2f57415e83c76efe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2824/magpie-cli-linux-arm64"
      sha256 "fa55779e2cc3af835e06fe62880153c39339e590d04b65606aede4eed887a53b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2824/magpie-cli-linux-amd64"
      sha256 "58da5a58712a39abf5ea64b06c23436cfef2bb5b156a93e3c91d941e709bf122"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
