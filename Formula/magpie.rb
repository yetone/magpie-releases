class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4887/magpie-cli-darwin-arm64"
      sha256 "8d8553956a46c8bcf368fb05a7325b61d8c4a9b463186d98f4c41bd464549065"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4887/magpie-cli-darwin-amd64"
      sha256 "89c5015ec3270559e49ce3832f23be40c234d870580e28acd0d5f264934b6d61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4887/magpie-cli-linux-arm64"
      sha256 "5279ca0860a847dd5bbe31e0f47674fb98a662fe077516a220500bdd050a9657"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4887/magpie-cli-linux-amd64"
      sha256 "a00f23d2b3db7ae07a797acd64c88284aec570634721e53365983d77eff8e45e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
