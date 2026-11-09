class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3437/magpie-cli-darwin-arm64"
      sha256 "2c4af8128a19761fd34c389132ac8757465bd3a776f13690b76d09ed709175a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3437/magpie-cli-darwin-amd64"
      sha256 "28d2123d25a2906cdaa987891e4cff3ea63eef3e2246cf094183207f66e919c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3437/magpie-cli-linux-arm64"
      sha256 "b7d55e0320e3803d7ac654bce183f4fdec451b4390cedae4167892e69caf2e8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3437/magpie-cli-linux-amd64"
      sha256 "e23d7b9155cea4d903956a0fa6171ef1e87dec91f95da117a5c37e446cd582ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
