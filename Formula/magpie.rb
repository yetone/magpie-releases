class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3108/magpie-cli-darwin-arm64"
      sha256 "6e717bc48aa7844e091b203706d4a99f381282f2d28a37abcdb91811047264d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3108/magpie-cli-darwin-amd64"
      sha256 "4f1b7d95cf2ab935a70994eb700843d235d0bce0607f8dac5ab59c402866dbf5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3108/magpie-cli-linux-arm64"
      sha256 "232a072e51129251eb2b6baaef83e03c2a5ee0fed18e530810b20932f6937494"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3108/magpie-cli-linux-amd64"
      sha256 "751dc90314c84e4db2079217dd2cac2579d3ee3969c4dac38303e34b203b289f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
