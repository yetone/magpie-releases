class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4448/magpie-cli-darwin-arm64"
      sha256 "de259a2cda5f2e83566f34b0d8323bbc26a41f0927197d6e47741f7b3f7444df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4448/magpie-cli-darwin-amd64"
      sha256 "6a1c473922baa7c8d75368335c39e0410639a19f64ef26d48ca3c7492a8af46d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4448/magpie-cli-linux-arm64"
      sha256 "c87da57f7508d7acc19e0121702e0a9f5c6d446b24a4945ac9fa19153cbad21f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4448/magpie-cli-linux-amd64"
      sha256 "63b93d57da02c3f16f6cae8968ece5f077e196ad237e56f4651c1ee75cc14060"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
