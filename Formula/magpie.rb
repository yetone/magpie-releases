class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4216/magpie-cli-darwin-arm64"
      sha256 "c746026c86982184f70efe92cec986614a6ae29e8be2f2c2d164e3941db3273a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4216/magpie-cli-darwin-amd64"
      sha256 "d6eb3b85e0c8d720a1558b9b9e449d32fa16d36f69e18efb20b8c381d87718a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4216/magpie-cli-linux-arm64"
      sha256 "f2a0910c478f03a946a5a47c06e3ede36da99d8079a0ec9d22ac3780dd2d4d20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4216/magpie-cli-linux-amd64"
      sha256 "a429a40a293675ff159ac5948169d822aa325dcdebe36b412ce05f22b5000443"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
