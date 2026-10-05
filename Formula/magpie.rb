class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.948/magpie-cli-darwin-arm64"
      sha256 "7456ec522cd1f086d74482e1d71f9751031a1969d9b6e12c902c071fb258b696"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.948/magpie-cli-darwin-amd64"
      sha256 "cdaa140e84f9ec6a2eb9c83c193b70bb2204f1d5e7bc2b5f95997375a9b41c21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.948/magpie-cli-linux-arm64"
      sha256 "5042f4c2e3dda7497e89b3a0fa69a8e13044f03795c6025041ebbdeef06953b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.948/magpie-cli-linux-amd64"
      sha256 "88ad5459a60de5e5e070ed02467fa78c779cd73424cfd097b0b60151bf2d558f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
