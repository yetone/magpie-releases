class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4840/magpie-cli-darwin-arm64"
      sha256 "81e5930f7f5d5aca4e813a69702b3fbba0e4095e9ea439b8c0c83bc6d8b21b66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4840/magpie-cli-darwin-amd64"
      sha256 "048858bb2166ae4ae0d83299d807b0ddafee2ce7658bf6a5728454c7fe7fd7cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4840/magpie-cli-linux-arm64"
      sha256 "ccfc91919e492a16352297b3b0119ab7cce10b1db1c83298dc22c8aacec4fd2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4840/magpie-cli-linux-amd64"
      sha256 "7fc622eaf51ca6999887a706827d20448f44f42bb3213a2560e9a8b45edee789"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
