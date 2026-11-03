class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2812/magpie-cli-darwin-arm64"
      sha256 "73956285204059159ad03f375d1e891f13fae9ee94afbdbfca3aaf3c8ccb5ee5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2812/magpie-cli-darwin-amd64"
      sha256 "3adbe89e865796f19eb71dc0265722b42ab59e2d996c6883f57da730abcc91ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2812/magpie-cli-linux-arm64"
      sha256 "757d367aea5ec5557032cf310ad71881515c9986caa6e74b7056dabecdcd9442"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2812/magpie-cli-linux-amd64"
      sha256 "f6d868070ecb021c7deb29d40d0c651c1678db5a1b8406b01288fa61591ae38b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
