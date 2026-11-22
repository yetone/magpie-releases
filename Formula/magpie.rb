class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4673/magpie-cli-darwin-arm64"
      sha256 "1e3e8a7015c35b06b67a6768b5fcc1737766dbcd8e888714e5dac7c76fc4d8e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4673/magpie-cli-darwin-amd64"
      sha256 "3380cf3a4a14b8cb03062316d5917ca9d02290461238d9f0510b12a7d7518845"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4673/magpie-cli-linux-arm64"
      sha256 "8389b2d9fe1417c9d746de7b36cfcbd091bc3af880ce504560ed11bbc62b1f9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4673/magpie-cli-linux-amd64"
      sha256 "f56fdd4e424936cb26fb9a3c994f6d16e7c13348b6d29a8aa49c54829cca3e79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
