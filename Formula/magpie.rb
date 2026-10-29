class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2105/magpie-cli-darwin-arm64"
      sha256 "bdf50675c66c320bc90b3ffb18435fcb33e8517467100606c7b256b3e54ac462"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2105/magpie-cli-darwin-amd64"
      sha256 "a3d4468a3cac162368b2ebe68ecc2107d674aae60a21027573c2561abdf8c6f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2105/magpie-cli-linux-arm64"
      sha256 "d41aae2f5d237bca72ff2d666d46b658876ff35889cdd2117f8c294f129a7d2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2105/magpie-cli-linux-amd64"
      sha256 "cad936b112def72f34bfbc27146d94fe6902ac12ec47d62b70e53e962ca2657f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
