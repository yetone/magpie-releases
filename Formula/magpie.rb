class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4533/magpie-cli-darwin-arm64"
      sha256 "b06868c0ab1220cdb5ed64bceb0ad8db875af1af91ab36eaa6fdc3ec97b89fa7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4533/magpie-cli-darwin-amd64"
      sha256 "b0557cf0d79326c6c68d8840327fd813e91c9094567defe3131f5e9a10a64d9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4533/magpie-cli-linux-arm64"
      sha256 "67361033069035947ddcad62ca9964d16460ce8c6651b0a694261a332552764f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4533/magpie-cli-linux-amd64"
      sha256 "0c85bbf21f246fd36f35f5618cfea866c0e2227dd34ce5b2525294ed8a69e16f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
