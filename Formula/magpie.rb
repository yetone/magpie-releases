class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3660/magpie-cli-darwin-arm64"
      sha256 "e4d1c752ed95fd2c39eb633d6ed2bb732409fdca6c4d8b25d66d4d148baa0cec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3660/magpie-cli-darwin-amd64"
      sha256 "f8a14332b0d6d5516738bce4d49bfb60ef32812422b70f6e8d5b41040780b353"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3660/magpie-cli-linux-arm64"
      sha256 "9461907e5119c08ba79bd6c3d2dd2c0e5003d6f63ec1b1f16d3aa6ef6d548d29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3660/magpie-cli-linux-amd64"
      sha256 "8b4815105bde3e38598fe0848000b289ed6940526e7764f0d7659f26338c0351"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
