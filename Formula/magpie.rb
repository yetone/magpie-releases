class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3977/magpie-cli-darwin-arm64"
      sha256 "8a2bf608fe6fc2d5891fe159bb56500942544f9155f4d029823175825de443a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3977/magpie-cli-darwin-amd64"
      sha256 "63ad82bb62ef49162e324eea54645bd26819743ddf5e22e22fbd2070a4d87483"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3977/magpie-cli-linux-arm64"
      sha256 "91b042c5a8d6f3c765ce6189f6247eecc6c17406b34c87fe6c16bffd1340a3e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3977/magpie-cli-linux-amd64"
      sha256 "2fdee5ed591135eedc91d470e3505c89e292cdb7f0daeef75244164b9cf01b5b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
