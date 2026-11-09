class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3468/magpie-cli-darwin-arm64"
      sha256 "98338580c4aada2f884d6ff7cfbba70aced6953d30a706dec2ef250d48617ef0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3468/magpie-cli-darwin-amd64"
      sha256 "1bf5da46267aab87552d7643dc6ada206f6d4392fefabfc2c8cc17d421ab05c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3468/magpie-cli-linux-arm64"
      sha256 "2876f6ed6fb6f7a339739b8f324c8c4a92c200c083fcb195cdb82d5db3052067"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3468/magpie-cli-linux-amd64"
      sha256 "9f4ca1416d10fc5cc583262aec020ebe892570cc1881c9ee04600d1aebaf34f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
