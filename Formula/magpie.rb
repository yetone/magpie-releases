class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2411/magpie-cli-darwin-arm64"
      sha256 "9ad3c1a1214aab3c903e8100ed148d6011e9f92a8243a5676fc3f84ba5a6a3f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2411/magpie-cli-darwin-amd64"
      sha256 "b0ebfbae0265cab5373c649a5bdbe725b4e7fc42c13905294fdf538814f9658b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2411/magpie-cli-linux-arm64"
      sha256 "c8b83955ed97413805638ff425c9e648047fbd3ac3dd3c33649dfc279a31d440"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2411/magpie-cli-linux-amd64"
      sha256 "45933714c1ed5d8fd3faafde0e180349205cb0f0ab63f9e841b00f8d9819fc63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
