class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3646/magpie-cli-darwin-arm64"
      sha256 "29453c54d2ac6dedd204b656098c70a3f9d37e1fe494614784edca0876836ce9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3646/magpie-cli-darwin-amd64"
      sha256 "6b348cb42951817ab821069227220d534184a9db96c94ea924b471858b123b2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3646/magpie-cli-linux-arm64"
      sha256 "1ea5b99429dff3384d66b77b9a1fb8889d8fbbd8088be0e0d67ffe6d71252861"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3646/magpie-cli-linux-amd64"
      sha256 "bacf31e98eb395d7da6516d4ec67d63146d338560fe03bb676aca8df2c34f5ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
