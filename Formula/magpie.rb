class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3587/magpie-cli-darwin-arm64"
      sha256 "8f870320c09be8d9b5e37055fd847b30624e06c0f7f405e24933e820762ea009"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3587/magpie-cli-darwin-amd64"
      sha256 "dcd5e270e069a2a4aa7acefd62dbd68c197ae5d41225c28139a6a6e7317188b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3587/magpie-cli-linux-arm64"
      sha256 "ef0b6b23419e60e718bd10aea7f079ac92a7643779d1ccbf6d2ea7f556aec46d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3587/magpie-cli-linux-amd64"
      sha256 "5271306ea09d31ae9cd869676dfe02ea889506be4a39f79fa505b635ef207b73"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
