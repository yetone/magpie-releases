class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1000/magpie-cli-darwin-arm64"
      sha256 "576289652f7466b2a4493cb886757fe248b46e508f16ec12e708e981adc45c71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1000/magpie-cli-darwin-amd64"
      sha256 "a43bdfa395f6459e6dc2ae5ba9be81a78bfc4d39a8d678af719cb93c22d96097"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1000/magpie-cli-linux-arm64"
      sha256 "c711fc65f57c967088611867e2984e9381444b2a6349f5bac00fcbbbf353e775"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1000/magpie-cli-linux-amd64"
      sha256 "f0d2d005026a24b5687d60f0114c5558875a55ca8a0c463254f36bf7cf071285"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
