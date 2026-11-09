class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3440/magpie-cli-darwin-arm64"
      sha256 "e762dd97b744aa4046c2fe6e435f25203bd59d947c8467d84e1a5d2b19369073"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3440/magpie-cli-darwin-amd64"
      sha256 "ecf45035462f7b34beff60514800abb72ec6fe8796a9e6a23433788e67efbb29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3440/magpie-cli-linux-arm64"
      sha256 "68796d70943878f2c4994af58e99823335e906224d4e8f4a536c35a27fbb0963"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3440/magpie-cli-linux-amd64"
      sha256 "c9401e664aed9c0494b71e6a571b2da7c44cf4a6cc81e221620106f7285caf44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
