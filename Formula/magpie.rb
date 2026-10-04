class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.905/magpie-cli-darwin-arm64"
      sha256 "5d9c249bf2c7009ac1159360b0603f89603de4bfe61ff0ad0d4b3b84e6b8e2ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.905/magpie-cli-darwin-amd64"
      sha256 "cec6a54c29ab8bf9b7344d6d0466c383aa29047e0d84a604c69cd7e7c3d05ac0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.905/magpie-cli-linux-arm64"
      sha256 "96a6bc06a7fa3bcd4c9366301005483d511703c058dcbcd8cce6f84669916890"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.905/magpie-cli-linux-amd64"
      sha256 "26d5d0c457d4abcd1cad3af97684b8b2368abfb636163d4b3ac420dadb05480e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
