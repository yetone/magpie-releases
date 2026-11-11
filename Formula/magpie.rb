class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3658/magpie-cli-darwin-arm64"
      sha256 "997358ad3738f53d0ef1ae1e93db8a00de6db724104f16cba1f3b4e1e3cf5344"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3658/magpie-cli-darwin-amd64"
      sha256 "fc0085ce00ae1fac813ca9787c1f0c753781a0e27b586a58e965e6c122a82512"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3658/magpie-cli-linux-arm64"
      sha256 "77e1c76372063c53f1d69d6dac28b41358aafdf39e9d748952aa9e732b4c56b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3658/magpie-cli-linux-amd64"
      sha256 "45f2cad3561101b640e80c56defc9d8941c413db911c3eeabc2614f52b76c5e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
