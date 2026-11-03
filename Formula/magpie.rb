class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2817/magpie-cli-darwin-arm64"
      sha256 "9606764a465eff429dd9b00701f1899126ff06f5db50aa3a440c4494fadc50df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2817/magpie-cli-darwin-amd64"
      sha256 "25f49ac89ef730c2def2c0f797d8f21419d4448e6ae0715b9a1821754ecd2e4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2817/magpie-cli-linux-arm64"
      sha256 "265cb91b140eb9dd58e4fee0520c97e75ecd7aace654d82bb7c7572cf8330276"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2817/magpie-cli-linux-amd64"
      sha256 "f6b298865fd6cb29bd7612763938d568a179c703f2e71edd2877f6c148eebb52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
