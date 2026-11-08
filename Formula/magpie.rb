class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3302/magpie-cli-darwin-arm64"
      sha256 "d71f4e69b326696a3717b8a0ac7e4c9df196c95214706ddcea34fca738ece7b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3302/magpie-cli-darwin-amd64"
      sha256 "2cce71a4697620628cc843b95be3e38daeb94cd649222ac2c55260470d356feb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3302/magpie-cli-linux-arm64"
      sha256 "ec17eef3bb1b8b6a06ff10cd152ee06c5044a0aa3bb47129dc3c79d5f4af1a0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3302/magpie-cli-linux-amd64"
      sha256 "1e3e174301000e647f9d3d3380fa0bbfd4ef609ca2632dac06cab332f976335e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
