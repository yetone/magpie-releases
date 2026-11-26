class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4893/magpie-cli-darwin-arm64"
      sha256 "ea3ac6f12fc062fc45a3721d1e13c1851519c3244ca88ac46e4e1780f4be27a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4893/magpie-cli-darwin-amd64"
      sha256 "b1fa188da94cf889758fb607dd232e2594137ce23770e7c97a2fd7d5d7eee0d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4893/magpie-cli-linux-arm64"
      sha256 "15b019cebaaf7bcaf9a390bfd7335519fa2ed586f02b11a80870dac5971a0e21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4893/magpie-cli-linux-amd64"
      sha256 "e525bff7cc2a3d21c1e41e93926493f6d752433f467bb5494e51de2164967277"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
