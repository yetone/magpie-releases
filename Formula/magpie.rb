class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3900/magpie-cli-darwin-arm64"
      sha256 "ae647e958d70c336aa7094a52d4a6b6bfb0e15d721647c11d81de38c1adc0ead"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3900/magpie-cli-darwin-amd64"
      sha256 "48ed31da5940888296bda40be3d1ad846cc7fca413a8b3238ce331533faacfa8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3900/magpie-cli-linux-arm64"
      sha256 "b0318e3dfc946c32776b5bf053b2b8df167fb62d700fe4ad8cec119e13dbb02c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3900/magpie-cli-linux-amd64"
      sha256 "c08a77bfebfa71e91f7e45004fd22fdf4bcb66ed007c3509939482bfb1e83aa5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
