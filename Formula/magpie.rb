class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2732/magpie-cli-darwin-arm64"
      sha256 "ea0da670f0a54148709e872c173ebf632d84b1d65eb5fa33222a122541cf949e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2732/magpie-cli-darwin-amd64"
      sha256 "90f701bb96a94c691748cc0ceb4297be1f76a0129baa61f636f528e5a3b165f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2732/magpie-cli-linux-arm64"
      sha256 "71df264687ce684d63531f63aadda20f202881f6b7ae70c20aacf00e17d20909"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2732/magpie-cli-linux-amd64"
      sha256 "2b90deb0cc892d70667f9b1b244d438980386f7763283bc7c968730b5994a220"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
