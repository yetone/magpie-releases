class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2676/magpie-cli-darwin-arm64"
      sha256 "1f3b12f2846a32a608e588b9d8d3470b24b5d44bd660e8a27f300e3a164b95d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2676/magpie-cli-darwin-amd64"
      sha256 "3fd9c25d661d926dcf00ee9fc43365a8980788b807ff1488626997a99a1c36c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2676/magpie-cli-linux-arm64"
      sha256 "7459c5651275d452fe69b532c2ea81acd8c4df64ef7979c27d4c276e514b6b0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2676/magpie-cli-linux-amd64"
      sha256 "c9290baeac652ab4f9149d4e87138e746acf3f2fd1c177e2e2e57587f95205a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
