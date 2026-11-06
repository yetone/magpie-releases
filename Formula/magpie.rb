class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3163/magpie-cli-darwin-arm64"
      sha256 "cdc580af89f5cc47954c80c800084108cef6c8074326711ec66f3f0ed74ec13b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3163/magpie-cli-darwin-amd64"
      sha256 "5d993786a27478b2db538ef63fa8399a2aa64e0fae143252a92b9b82f107f32b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3163/magpie-cli-linux-arm64"
      sha256 "4754d4814c1f159a213c369d885009e88a4bb1d534c88fd52da26c0e51b0a5c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3163/magpie-cli-linux-amd64"
      sha256 "a88637cd968bbaac79edbb2e63fa8e95f17050da74b9676b941ef2808925a0b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
