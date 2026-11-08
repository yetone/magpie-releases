class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3301/magpie-cli-darwin-arm64"
      sha256 "0ad636f1a9d1198fc86dcf16aed928c38d9898daf1c1eade0989da5f5fdf31ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3301/magpie-cli-darwin-amd64"
      sha256 "08cb63fd06d013a6ed900fe52ecd8edebea8be906176220776ee5f1450dfe2b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3301/magpie-cli-linux-arm64"
      sha256 "602bd1b7eeb9ca83cb0db99cb33c144fad44932f8a70aede2c0748198da2a639"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3301/magpie-cli-linux-amd64"
      sha256 "6bad79abb18a4b71390614a67e4ac7ab0cb334a6af821943c504192d70cd006c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
