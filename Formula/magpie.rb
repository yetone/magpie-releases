class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4701/magpie-cli-darwin-arm64"
      sha256 "4385bba98b10bfa919fe59fff5a4c3d6b786ef85c9131bdc71d409e6b7035335"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4701/magpie-cli-darwin-amd64"
      sha256 "a2adc0234fcafb17790c6d13bed3d9e0b0d0a497a23d461c7b89d9f545cf5731"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4701/magpie-cli-linux-arm64"
      sha256 "7a0b14da58a112cccf2a3b2dc17cf2ae807aeba9be8b519b13224572b7731c48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4701/magpie-cli-linux-amd64"
      sha256 "5ba84762745b428080ce64a145851f3f0414f048dc78dcb6d2adcb93b11fcfbb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
