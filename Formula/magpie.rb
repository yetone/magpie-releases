class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3335/magpie-cli-darwin-arm64"
      sha256 "a79a140d8ab99615f9740a9c05a44cc0448985d5b4eb25240b795af41ff017e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3335/magpie-cli-darwin-amd64"
      sha256 "6793c44b5d7fc9b07b4d4487783b9828040de27daeb43552870d15bd2ba45432"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3335/magpie-cli-linux-arm64"
      sha256 "d4762c23f008decd873f72c778dba56d88401521ffc62fe97157fd64e2201242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3335/magpie-cli-linux-amd64"
      sha256 "df9a4248339898129ada3e573dd655ebdb5bdd8424099694f50b50a47d02c36c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
