class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1139/magpie-cli-darwin-arm64"
      sha256 "a305a8e2694a1334a73be7955a1abdb080ab14c112d694dfbcb2c0f9dac3e167"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1139/magpie-cli-darwin-amd64"
      sha256 "92c226107ff371e47390e5647fbe064deff23d90750b201ebed26c1614dec054"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1139/magpie-cli-linux-arm64"
      sha256 "49ddfe083e0f47ecf0cbe5baff5aa3c40bba9506d524eb84571359d4ce87c123"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1139/magpie-cli-linux-amd64"
      sha256 "2bce36cf5decc725306af9b5b13fe439a90c9c86ada964f565dc600e6692bbf8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
