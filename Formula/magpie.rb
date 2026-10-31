class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2472/magpie-cli-darwin-arm64"
      sha256 "bcb72e44d93a4fbf899eee8b645d488ee3fee3454e9f5f5ea5037613f445090c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2472/magpie-cli-darwin-amd64"
      sha256 "ffcdd23d3e2f26327e00d235f636e7a69bcc368a8696462f02b8791e7987b571"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2472/magpie-cli-linux-arm64"
      sha256 "4998c6eef3e07df16b48202d53a8181ebc9e5c4be67681d61e55a0d0caa6d616"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2472/magpie-cli-linux-amd64"
      sha256 "f4b6482143aa6b2c14bcbf896c02700a48738645db2c1d6d59cf7c543fb76563"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
