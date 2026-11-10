class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3629/magpie-cli-darwin-arm64"
      sha256 "b22fa6cb0ec3bf2f29a8c4927c84fa019ce2b4daca2c692914f110aec4ede2d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3629/magpie-cli-darwin-amd64"
      sha256 "6c370a8796486cc3dbfebad5f162166a98a71a02f5348da85bef1a39c6dd0e70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3629/magpie-cli-linux-arm64"
      sha256 "2afc7d6552b1ecdddd0ebd364ab2a30b5284be15631fd163794834ae4ae1cd98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3629/magpie-cli-linux-amd64"
      sha256 "f9ec679ccc69b1263c89f803b57a28e63299f3fe5fa6b716baa5ef7bb6e18d4a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
