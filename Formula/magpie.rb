class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3607/magpie-cli-darwin-arm64"
      sha256 "806cbb316199499d32734f18580078da71929ff8cc03da4893c77b259aa2c29f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3607/magpie-cli-darwin-amd64"
      sha256 "69d03848cfefc13582eb9bcb78365a145ae8b510b743927e4c4edb2d0ab07425"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3607/magpie-cli-linux-arm64"
      sha256 "a40520e4c68301d325a9b098247f6473aff024af4dbb9be77f0593f18cdb925e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3607/magpie-cli-linux-amd64"
      sha256 "b28bdafe24cc70117a16427a8e2b157fb6d084833e1b283fdf53767b9db641f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
