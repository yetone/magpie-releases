class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3872/magpie-cli-darwin-arm64"
      sha256 "9ea7a2f70f33754adfe846d184a487550ee924616f24ec3dd6f29f70eac17b61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3872/magpie-cli-darwin-amd64"
      sha256 "d1ce203a5950a0a365480c5bdda84f082c28df0754c987c710b35539181249a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3872/magpie-cli-linux-arm64"
      sha256 "47bf5a15a74bf54094bb599f91d7c35bdb7773091aa3d12994ad77a0c3230a68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3872/magpie-cli-linux-amd64"
      sha256 "901a78660f97fc1c286b4b01d50f0a1604e4b82de2f812903f38318971095e18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
