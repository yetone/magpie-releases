class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5000/magpie-cli-darwin-arm64"
      sha256 "f28f8fe2604801f09a8b9c4251ccf27e51aff38ad12c0deb35bda2eba01abb72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5000/magpie-cli-darwin-amd64"
      sha256 "2a1c237d75e8eb760e9bc5c6fd625f0b9db0b315796dd9f0c0b613edf8825087"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5000/magpie-cli-linux-arm64"
      sha256 "35f913d418aa669b367d40da6f8607d59b2c1089f1e689e92037b92f5f627d6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5000/magpie-cli-linux-amd64"
      sha256 "c58f58964c5024eaa8b59a06e161696a4bbd39f0ce78a22081cc040383e093bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
