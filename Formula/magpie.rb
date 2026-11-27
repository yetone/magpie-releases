class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4920/magpie-cli-darwin-arm64"
      sha256 "dba33b7ab264f49eb6907298069c057d227ad26c50e9e82b72263fb1c971d264"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4920/magpie-cli-darwin-amd64"
      sha256 "a888e250b8165df8418da6323025510ba94557de35464c6eb4f6a94a2821c14b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4920/magpie-cli-linux-arm64"
      sha256 "0e5b8a45bba172cc304be2bd4a90ef27f8ff1dfd4cd6b9b651148d0cb9af93aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4920/magpie-cli-linux-amd64"
      sha256 "5331b363f79f24fe146c304739c1cf55cb4a31b1069a14e36aeb25fff17a3a97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
