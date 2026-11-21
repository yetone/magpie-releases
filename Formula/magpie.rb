class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4652/magpie-cli-darwin-arm64"
      sha256 "f094114eac9cae867f4e800b4d3d1ed56075745e1daf5a487950e01ec26a5263"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4652/magpie-cli-darwin-amd64"
      sha256 "16da78fdd126cc8b3e43022f913f680a88750717c778503e61b9311d3846632a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4652/magpie-cli-linux-arm64"
      sha256 "05dbafd7b7a7de5e291938889c97379fa2ec3eb7efcadd1a9ba766ebab9c1754"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4652/magpie-cli-linux-amd64"
      sha256 "a5654c45c5e56fde771f4f53f6e6e1dfab7100e8e6dd9fd255f6a16907d40605"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
