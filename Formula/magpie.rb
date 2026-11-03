class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2879/magpie-cli-darwin-arm64"
      sha256 "1328932d4dd920bd3b6624872fc42dde0f352737331c04a1d0fed918f7a77096"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2879/magpie-cli-darwin-amd64"
      sha256 "07b86cc11cf595cb2647d4119f37e2f2992565262d6601a91b24e8eec4d538b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2879/magpie-cli-linux-arm64"
      sha256 "75432dd797d62957eb1f0ace2466771b55d4bc77fcae14452bce34e337bf2bad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2879/magpie-cli-linux-amd64"
      sha256 "17f04d65822f5a08030b7aa125d4235e72890c73760b935e792298ae8d59b82e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
