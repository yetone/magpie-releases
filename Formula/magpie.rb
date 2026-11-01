class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2591/magpie-cli-darwin-arm64"
      sha256 "b2324faffdbec5a38927fc53c7a12995de906c4af9009157d9de5b24c3b05844"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2591/magpie-cli-darwin-amd64"
      sha256 "0a40c5bf7a6b1f11a41896c97e4b3f1235581f38073354f0566e808adfd6e8b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2591/magpie-cli-linux-arm64"
      sha256 "6e26510438ac927c2d95b4ecb0b8631158b4c2bb057b782f4fb555404714cc9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2591/magpie-cli-linux-amd64"
      sha256 "ee1ffc5944664ff545f3b462fd6b4ba37f095c7730b8d2818b89bfcfef84ae90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
