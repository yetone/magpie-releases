class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4404/magpie-cli-darwin-arm64"
      sha256 "2d43868faee771f4c92d8e9d9fd13a79e83bdc3752fe34271304b6da8dd5e132"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4404/magpie-cli-darwin-amd64"
      sha256 "d939a17e93956a50bc433d1a5356a3da0d7fc960c1988c7fa2890416ba11bfaa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4404/magpie-cli-linux-arm64"
      sha256 "0ff5d9a9baedde4b8038a8ab8b08cfe3ad859afc721186da17b45386f94f763c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4404/magpie-cli-linux-amd64"
      sha256 "8d22941cff747677d09dce8131e74d76f06f0acfc1af249f942cbbbec058dfba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
