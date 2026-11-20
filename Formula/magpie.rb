class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4604/magpie-cli-darwin-arm64"
      sha256 "667d6c3ca38efbeb5169bbb4a47846c8985f5103c3c4a568c649d39500399056"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4604/magpie-cli-darwin-amd64"
      sha256 "281fd6a570a5a6471b6ebf6443ab230a3fda1f99df03615de7d584891b302222"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4604/magpie-cli-linux-arm64"
      sha256 "7acf06d59f99d494b0e1c6fd04e1be1fb8de918a3a3898fec29a5b26619d0c8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4604/magpie-cli-linux-amd64"
      sha256 "539ad4b5dc886f8559493c4d33e263072a32337b8e3544e83e029bb55f4eca58"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
