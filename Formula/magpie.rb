class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1886/magpie-cli-darwin-arm64"
      sha256 "be645cac59e6445f7af03d90c4b1b6ccb2145431899b1576ac798600b22cc28e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1886/magpie-cli-darwin-amd64"
      sha256 "1f4f495f72fe00c19ebe81363d38f11ba9cfc29354766a77c1ffcfc13c3c8e65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1886/magpie-cli-linux-arm64"
      sha256 "3e3a5ac407da103305e58d58759d9f46bbc6b6eb16b8e5de916219b957c6f312"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1886/magpie-cli-linux-amd64"
      sha256 "6bac26022b562713984d3dd390d5836daa1500ccc8625d939b1f5094a9fb90d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
