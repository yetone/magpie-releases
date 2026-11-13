class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4012/magpie-cli-darwin-arm64"
      sha256 "f557c7b6304d79c9082acda5399d14881a70c86555b3891c104e657927188e91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4012/magpie-cli-darwin-amd64"
      sha256 "18c16ca825d257423f2660c7f5c96ce46ab28cff3cc92daeb07596054bbc531e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4012/magpie-cli-linux-arm64"
      sha256 "eefcb7f6aa40d1542f15ee343f2f863f1be6482b5779ed93d8f710ac1261bf01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4012/magpie-cli-linux-amd64"
      sha256 "f03e9883e6b2db841ecf5c68efcd753488ee3e9c0eadeec40294e735705ef048"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
