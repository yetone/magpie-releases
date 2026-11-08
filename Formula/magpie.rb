class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3296/magpie-cli-darwin-arm64"
      sha256 "5846d841ca5f0cf576a54e9f026ae9d155d5610d64786c4bd65914e916f7d579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3296/magpie-cli-darwin-amd64"
      sha256 "347d31dab6912cb48051e4f445e67a139b697487424ceca4f59593c8bdeda5ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3296/magpie-cli-linux-arm64"
      sha256 "0ec4c3bef76e96709d8ac1a622a2ec450ed78381041ba43b410d72d212af40f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3296/magpie-cli-linux-amd64"
      sha256 "82138c27d3a850f557a645f6180eb0212b5aa669a344394d407e47549a8e9e6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
