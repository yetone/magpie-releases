class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2983/magpie-cli-darwin-arm64"
      sha256 "78e1f7282ec87cb41aa5e425a61489ce3d8857727c5b390a1862a897e3ce74a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2983/magpie-cli-darwin-amd64"
      sha256 "d43ee6cc2a2b79e9a0eb06a26b40cf266c67f08afdee51f1c90a8d82328618d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2983/magpie-cli-linux-arm64"
      sha256 "f86c2ebfa5561b98926fb1eb1ad35348e7358eeb6379bff59716d1ead7b29847"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2983/magpie-cli-linux-amd64"
      sha256 "24d2ebc5a6f0d9c9d173137f5f8a60992099e9dac18ade3ad45e7a9a8c19db53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
