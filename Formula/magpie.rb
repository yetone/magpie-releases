class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4600/magpie-cli-darwin-arm64"
      sha256 "3c29a6f5e3d39ea60b9a69ee612bb27028dd38133b0efafb11a1c178e86899f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4600/magpie-cli-darwin-amd64"
      sha256 "0e8e61154eff980f4502387cfd389283f97e71058dc6591b3f703e3e3652f05c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4600/magpie-cli-linux-arm64"
      sha256 "aacbb0901507fc0758b0299bacb54fdf42d9548b121316ed3d41ce41663d78b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4600/magpie-cli-linux-amd64"
      sha256 "b327b20550a01f6b1f937a62709dc703d7a30330c8a4388126b13dac523c5820"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
