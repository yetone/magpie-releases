class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2172/magpie-cli-darwin-arm64"
      sha256 "1531679785b8fe46b7df3cb84db7f6f904e42866cde06ea8cef82feec486e01b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2172/magpie-cli-darwin-amd64"
      sha256 "d217d7d9d475307f7acf47d66eb6754aac55eab2992939791137b4c6258f7dbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2172/magpie-cli-linux-arm64"
      sha256 "ad49ba819bbe9ec5babf6e6d29eafb6faf915629f4ca4deb67ab7eb14898ea6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2172/magpie-cli-linux-amd64"
      sha256 "9f6c262103d2ead5591d7a6ac61ffba4b29a52bd5c57dfe72df82629630067e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
