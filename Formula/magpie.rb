class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3404/magpie-cli-darwin-arm64"
      sha256 "69e7abe16b6f7562fe94c1634db8d09409601b711dca198e148775da98c97b13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3404/magpie-cli-darwin-amd64"
      sha256 "e7584e4f7d02cf4a30aec6945d53f0e3873518f0b4291c779a7d4efe2cb21603"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3404/magpie-cli-linux-arm64"
      sha256 "27705944d28ab2bd95a9bd4fd7406e80f60d0a0670f3e69ce03ecde3b5094598"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3404/magpie-cli-linux-amd64"
      sha256 "9f372a4dc87fdccf1312f912694def47393a2b4d081e2d88f19dabf39ab33f16"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
