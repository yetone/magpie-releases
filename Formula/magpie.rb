class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1899/magpie-cli-darwin-arm64"
      sha256 "df4e84ff8e228377a143c208c2df7a47c327f76ab554621de5032ade786e13b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1899/magpie-cli-darwin-amd64"
      sha256 "e0b5ab22bd455e5d222de719d188d90282511e4f396639ad95234402b9209225"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1899/magpie-cli-linux-arm64"
      sha256 "0dfbc89de94ae3ea298cbd4908557392b5d9aff5020a945610eaf8738d1f0bdc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1899/magpie-cli-linux-amd64"
      sha256 "01179e36f48d04d3aa5961a8f785ebc0775946b46ed12ceadb4c3279f53f239d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
