class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3393/magpie-cli-darwin-arm64"
      sha256 "ea2c36e87ddf4694e1e6b48a5e6ef036fae113a3df09509e92565846ac4c5e8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3393/magpie-cli-darwin-amd64"
      sha256 "9b1f5b4e509ef64f14752798d2835a834f4519a43dcb1e2406bf157c743455aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3393/magpie-cli-linux-arm64"
      sha256 "4aa54d51c8fbf33f1756a806f7cb55b5678715ba0c6b3aab245dee673d611ad0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3393/magpie-cli-linux-amd64"
      sha256 "85f10ecdd169ccb11b2ef1bf38762eddecd896a728c1e3c96ab64778bbf7b396"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
