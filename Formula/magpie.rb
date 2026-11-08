class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3315/magpie-cli-darwin-arm64"
      sha256 "fb5953f3b33bb3aa9e6d3474658291b14b2cb9669249957f7b5a5d5cd6427d22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3315/magpie-cli-darwin-amd64"
      sha256 "583a1c687c7e9ee25906f8791a6c9ab644447254c79378645cef6f7f64729c25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3315/magpie-cli-linux-arm64"
      sha256 "1e9a8eb33049c40d2ab93e6a8ae28f35caa1c32b6eccf0d99dbc3330d81aaa92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3315/magpie-cli-linux-amd64"
      sha256 "4f15ee0e8e17df19db39b8ebe431c468fe911104d50e066df35f543697f23877"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
