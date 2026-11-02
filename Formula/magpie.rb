class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2712/magpie-cli-darwin-arm64"
      sha256 "6c320810bef3069522d296f2b2a6bd6e90d74f4fe8b28ce5ec8eb593901e27e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2712/magpie-cli-darwin-amd64"
      sha256 "ec10f5b7b72bcbc19dd6ebd1ff4968be83fcd4c1ecd4f2b8d596cde1fd20e48c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2712/magpie-cli-linux-arm64"
      sha256 "5796089ad474ff04c91767c6ce36e7206cc626b71a09497797b3c41f9ab0b251"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2712/magpie-cli-linux-amd64"
      sha256 "3fa76b5906275b632af447cfd95f25ed8081466b2a2d0d312b923511f7cd6338"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
