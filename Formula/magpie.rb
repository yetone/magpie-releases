class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2382/magpie-cli-darwin-arm64"
      sha256 "d153791f1e32390eaa87ecd9d09117613b8ee6377b02d34ada6d467f3a9c07ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2382/magpie-cli-darwin-amd64"
      sha256 "0415252011bd45290fe9aab6866faf61139fe08e32ea7f460194f7107ff70e83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2382/magpie-cli-linux-arm64"
      sha256 "94dce8379f20a689559fbf2f41e0f271a265cf7c5c09869a9563694ffeeff192"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2382/magpie-cli-linux-amd64"
      sha256 "937cd273f4ea9fd19e22c98904be96e5318f3d7b809ade56d2d87fa831b0c916"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
