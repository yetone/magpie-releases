class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2354/magpie-cli-darwin-arm64"
      sha256 "4b2ebde16b7bb1f17e31f9c8157dc531298e282365f2097d6660abb246a7a8ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2354/magpie-cli-darwin-amd64"
      sha256 "6f92a02492ec7efd9e93ec195cf2faa0da5ef862f6c93f7cf040337e7e64e6b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2354/magpie-cli-linux-arm64"
      sha256 "ca6d1a90e60ca5dba9c46ab998a2968d1d129ead59c831f5542851bb3d94463f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2354/magpie-cli-linux-amd64"
      sha256 "3bcf4262a3aa2ef01a4bb36847340963bd34372275578303895476da392a05ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
