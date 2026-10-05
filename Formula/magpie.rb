class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.970/magpie-cli-darwin-arm64"
      sha256 "906edc0b0608794ac89858d54882a0e848f925373994f2f14ba57fd0540885f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.970/magpie-cli-darwin-amd64"
      sha256 "19e67018cc72c49ddbd0cf0153c607a75dfd1eb0927a69de2336821fdc41d6e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.970/magpie-cli-linux-arm64"
      sha256 "e5dce77dca75752e3210dd40029dbe9a7c4b53a2f2e328d1af308cb82398ed84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.970/magpie-cli-linux-amd64"
      sha256 "1e17c432c556cbeb85d8bea444360a12d416852b41b795f50b26ec308cc93a0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
