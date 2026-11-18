class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4495/magpie-cli-darwin-arm64"
      sha256 "4bae6864228102eaf3baf6a0aed039d0076242a590f72113270a0b51f085596e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4495/magpie-cli-darwin-amd64"
      sha256 "08153f66e41df8d1d0adbe089bdaa510b5162d361a4b8c06fa5051b45f213bcd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4495/magpie-cli-linux-arm64"
      sha256 "95af11ad67de6456f8a4d9d9ff46c2e75a145095a7f7148cc47b4c0308b15504"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4495/magpie-cli-linux-amd64"
      sha256 "da974bb49887cc4999639123bfd9d4d88265d093d9a9e9b2f2bb34da12bc497f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
