class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2372/magpie-cli-darwin-arm64"
      sha256 "71132de17883a6b9ccf286482157ea532c833eed4de268c768b0436187aafab1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2372/magpie-cli-darwin-amd64"
      sha256 "c90221c008309ad1c47241639c686024e48a7d230ba8ba967d7f2db664f37154"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2372/magpie-cli-linux-arm64"
      sha256 "4df1f3fce7bdf2239e0a47580067614453c22bb5544a3b2bc09e4c830fbd2b24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2372/magpie-cli-linux-amd64"
      sha256 "d74fa3c4c074cd8615ef8467eb17a7ab360252c39f17d1059ea56ee5b1ea7e57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
