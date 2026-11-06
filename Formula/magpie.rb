class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3105/magpie-cli-darwin-arm64"
      sha256 "c6f544124c210b54f11ab91243d1ef8bf7a1adede501201c6da1c95c2c12b0a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3105/magpie-cli-darwin-amd64"
      sha256 "76efc90773131a702fff0f581a9a001537e9a08bf06d3b0241e62918feaa217a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3105/magpie-cli-linux-arm64"
      sha256 "1b7353525be23ce84bb676e0008451c60dbdc85482a236fafaef1581f3359e5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3105/magpie-cli-linux-amd64"
      sha256 "a19cc442f661cc40689293ce89b00614bb254be728fa144cac2e08def0f33f3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
