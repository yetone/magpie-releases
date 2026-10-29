class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2085/magpie-cli-darwin-arm64"
      sha256 "d7b02e8f220a16e1ce7a65592cd8d12ab1f16152e031be796e668a792747f33e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2085/magpie-cli-darwin-amd64"
      sha256 "19426006598fbbd1ad51dc010b395055eaff04e6a4170ca0b1b013d5c98b44c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2085/magpie-cli-linux-arm64"
      sha256 "156a364b57c2096977081859f0c6d7b38e4b31ccea0ca574a4de826d00426e05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2085/magpie-cli-linux-amd64"
      sha256 "010e8e8ca2e6372104490a5117e05f61e9bab8d1d3c2c10f67116a1ca44e9ad2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
