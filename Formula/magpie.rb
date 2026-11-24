class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4742/magpie-cli-darwin-arm64"
      sha256 "a160a5e49341ce06489f67f218159d89d7d6288c86d09546337fc9f35b7abc3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4742/magpie-cli-darwin-amd64"
      sha256 "5069935d5d781422e86883dc7aba541d1231a23a44a6c1042e5380afb8243a99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4742/magpie-cli-linux-arm64"
      sha256 "c2d7e5946cea7d6b6478ef45ba38fba52640ca36a485d440ea077399a0b90dba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4742/magpie-cli-linux-amd64"
      sha256 "c84b6208f82d726ff921cf52f252fd51e44f87025c5007323d320146aa9e35c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
