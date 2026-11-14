class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4101/magpie-cli-darwin-arm64"
      sha256 "800831f08bb6890cbaf34965bd31e570f3ef19eea91774fc8830c0773330b36c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4101/magpie-cli-darwin-amd64"
      sha256 "fb50f7d7fdfa0beae7aefcef986a92679157bdbbe0ae321731e3c2436c9d3fd4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4101/magpie-cli-linux-arm64"
      sha256 "b05e5b4418d8726f34c33af8527b243f0bb12a79ea53f542f747aaa7dfe87c79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4101/magpie-cli-linux-amd64"
      sha256 "55f6e7f13c0fa5732eb22550907286c04faf8a483c5adb0b70b7ae6179508e6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
