class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1140/magpie-cli-darwin-arm64"
      sha256 "8d7bf514c3a44c705a1ec6a4809b8b766374325084fe997d3a0490e3ee169d93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1140/magpie-cli-darwin-amd64"
      sha256 "dce69e0bf263dcb38a230992bc24fc7b1b1b8236d82c8d3baba870bd44b41acf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1140/magpie-cli-linux-arm64"
      sha256 "550593b057540b57fd2cffc4d1a5423162602da1d41d4cdc9d0ed4440eb9377d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1140/magpie-cli-linux-amd64"
      sha256 "c4dc256cfc7a410128c15be2059983a1f11ac36a3f78c7965351c67dea29e776"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
