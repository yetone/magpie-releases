class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3881/magpie-cli-darwin-arm64"
      sha256 "e9f3abaa417b64fa1cecfdd3ab0c27c17d6ccc390460c6e32bc94e7b3dca087c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3881/magpie-cli-darwin-amd64"
      sha256 "9bbaf43851bdc7bf0825d59554bac7bfae598a79d1dac6aae9c8e2c363bc6ada"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3881/magpie-cli-linux-arm64"
      sha256 "6f381316fc0851fa1a37e3fbca90e521f7cac8fc7dac39bdc54e6058e7ab536b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3881/magpie-cli-linux-amd64"
      sha256 "72f136529ce3d81d03743dbb96db292c2eba6870c8892f7acd60d4464fbb2f44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
