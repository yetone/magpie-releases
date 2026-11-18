class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4480/magpie-cli-darwin-arm64"
      sha256 "ea7af59798909a944d0aef51cbf265bce88b0a9bdf3976d07cb6e37312ad45c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4480/magpie-cli-darwin-amd64"
      sha256 "ca332666e1f043cdf7ac7f0480a057c0f23380425f2ce8018f460f34277b57e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4480/magpie-cli-linux-arm64"
      sha256 "4cc514ac11435b6e40d79fc1523f5e92f130660f6e5346b3405187cb207fcf49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4480/magpie-cli-linux-amd64"
      sha256 "e2452f7cb610b1185ce518f602553f20d6a9c460fef820c0e4d87bbbe5580f5b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
