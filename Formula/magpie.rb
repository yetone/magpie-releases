class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3069/magpie-cli-darwin-arm64"
      sha256 "16cfd9fdc085b7563246e49fe29e0679ef78db15a675e62266700ce08bea70f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3069/magpie-cli-darwin-amd64"
      sha256 "6bb1a1e41483db9aa949a9d486f6117fd9057998461d544956d712aad1ebb8e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3069/magpie-cli-linux-arm64"
      sha256 "93862a50b3b566b8e69a71f3d8d6b04fd4a42682fb071fc232178cb11a7fe04f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3069/magpie-cli-linux-amd64"
      sha256 "001a6230ea37cb13482e0da070c7177b16281ddb4a023cc76fd0943e0f46c98c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
