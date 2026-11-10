class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3487/magpie-cli-darwin-arm64"
      sha256 "a8e9ac818493f8a1f92c37f71827b026fcfe288f3f4dd9ba064f9228c31b4123"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3487/magpie-cli-darwin-amd64"
      sha256 "2f792b6a4303bd7dd099a223e11edddb174bc91ce5dafad1231263dbfb7d75c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3487/magpie-cli-linux-arm64"
      sha256 "920994822101faa5870204d4769b1205ec96a10807bbac07749ad59c89ae9109"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3487/magpie-cli-linux-amd64"
      sha256 "3fcd18cb8805cd3ff6338549351304d34b7f6aeba7a60011c152084390aa0bde"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
