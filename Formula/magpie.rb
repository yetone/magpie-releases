class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2015/magpie-cli-darwin-arm64"
      sha256 "9e256dde5ffee419fd8c6d3132c3b7a0818051b4298d2da6180b33df7eb0b681"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2015/magpie-cli-darwin-amd64"
      sha256 "3e7fb010b2032ec53235b170918c7269a38e78b07e88c2a3014f352dd96f614e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2015/magpie-cli-linux-arm64"
      sha256 "f751b0ec3aa1c8535489b5e864beccb0e566b148ca1a23f2fe8445b776caef77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2015/magpie-cli-linux-amd64"
      sha256 "c3756536cc46c8e722d165f7768cba7a9ce88a564de743eb40fac99cd10b9475"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
