class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.958/magpie-cli-darwin-arm64"
      sha256 "f14acc657b49005093d1e8bea93f8d34b7a0c4ae01aadc5f3c8ef7b732e75b53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.958/magpie-cli-darwin-amd64"
      sha256 "6aaff92fafed3601a2904b787a93eee22365082fb034dd39a689f7d7a5711ba1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.958/magpie-cli-linux-arm64"
      sha256 "ac45c02e579ee8b17d9928c08bfaef11f0c7304f82b930de286482733fdfb514"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.958/magpie-cli-linux-amd64"
      sha256 "89584bba0d387b4433b4c92f39630f719736e523e878e1806b7a6f5f462672e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
