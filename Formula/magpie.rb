class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3889/magpie-cli-darwin-arm64"
      sha256 "96c168f65df8442fca43cea7a915e90f98f3e3b9285be520b3c5fa04b7cb66bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3889/magpie-cli-darwin-amd64"
      sha256 "d5e727ed34ff9d77e358b2b460119b4e9c64786fb29711c82e1ab63a55439fde"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3889/magpie-cli-linux-arm64"
      sha256 "1fba16b0bb31f975ee8818f2bb93913a8904f75666dbcd8e9436545c69291200"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3889/magpie-cli-linux-amd64"
      sha256 "88b5305286a3261f9dc76be6971fc6a5894ff79e4fb5dfee490c27f2c4896ce9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
