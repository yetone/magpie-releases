class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4067/magpie-cli-darwin-arm64"
      sha256 "25d87a211a5524fe6461e8b908076c3461651e4d7fb3bfc3ea985613218eb799"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4067/magpie-cli-darwin-amd64"
      sha256 "c42d47a2c3ad7b4ddc36a8fcded9c0eb9cabc4395e2f1a9cac4456a88e42cd0d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4067/magpie-cli-linux-arm64"
      sha256 "a5125f8069713b00532b7ae39a9e50f6a4b1a724cd7ad077e7630a638a2e7efe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4067/magpie-cli-linux-amd64"
      sha256 "67e3782f9690864df98d484816e800d47ef02bcab8e77455aaa1a3b120dd4eed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
