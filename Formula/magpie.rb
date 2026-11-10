class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3596/magpie-cli-darwin-arm64"
      sha256 "a816648a0fc750ac2bb533d149b8bc94abbb26e0cbbfe7ee8ba55cd61c9ff5a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3596/magpie-cli-darwin-amd64"
      sha256 "c6eccf2eb3ff4a47f1bef836a356b8a7f59ec282acb27d1d73e49b57e1765bdc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3596/magpie-cli-linux-arm64"
      sha256 "3da815d2a53747ae470d61afef070732dec8bb1a3abba00fda919275007f2620"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3596/magpie-cli-linux-amd64"
      sha256 "879a1d3103ebb38abbddea2b4fdafc4a77b0ab9cc20051215d1b0a8427dc7226"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
