class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4827/magpie-cli-darwin-arm64"
      sha256 "b61cbd0b61fc2a9d4c74a5f8c3db5377fdce3ba532c7d4e3a450c01e22118dcb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4827/magpie-cli-darwin-amd64"
      sha256 "868231398969f3d7823ef55e50c608301d9063e2910b882a2a6000a05620652d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4827/magpie-cli-linux-arm64"
      sha256 "22c3e584599b0d7be08af472f1d8fcbbfa43b552285040cafef22a9e37c7d41f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4827/magpie-cli-linux-amd64"
      sha256 "b8114988f12454e2c4c5f6af6c444256e70cbb3621d88e0153d89c068b4ee003"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
