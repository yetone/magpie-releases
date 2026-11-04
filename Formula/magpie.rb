class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2978/magpie-cli-darwin-arm64"
      sha256 "f676b221f8cd8a0d4f3176a4fdd96f0753fe679492fb81f9523c1dba6095d71e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2978/magpie-cli-darwin-amd64"
      sha256 "0621a6195fd1cd909c69f02afb5ba32c76a6063369e00ee47e57094404efcdf8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2978/magpie-cli-linux-arm64"
      sha256 "a37d0fcaf245fb01e081e597a5fc39dbf56962135cef07bd17e8df9d60e5ea13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2978/magpie-cli-linux-amd64"
      sha256 "e3fde8f5ed462e083ecf623b22721714838dd3dcd8970653ca18e98419795ddb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
