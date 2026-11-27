class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4974/magpie-cli-darwin-arm64"
      sha256 "74b4c4fbdcf51dd3fc76cd308b7d002eb2d50592eabbf6b1547bc0d2dbc32331"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4974/magpie-cli-darwin-amd64"
      sha256 "b2cc1f7a1250b551e91817d6147a08b4b73ddae4a8383bee80385a30387954c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4974/magpie-cli-linux-arm64"
      sha256 "764b77e55a84c6d9a8713d31c7654d09ac0862c54e8d0ee058f2ad5e26e10298"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4974/magpie-cli-linux-amd64"
      sha256 "00c047e0a9709825c7ad0744914a2934b45724e5c7fc311d74b34dfab416d33a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
