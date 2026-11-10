class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3627/magpie-cli-darwin-arm64"
      sha256 "32fe404cf6d5cfbe9b5de10fc82c6e349866e9ffd0fc8e2f519a59ccbd66d8aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3627/magpie-cli-darwin-amd64"
      sha256 "645c7a73a63d2d0a63766b11d41cbe8ec322540a09ff43bfc2fc0fd91f59736e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3627/magpie-cli-linux-arm64"
      sha256 "c65db39c3834d1d85332a6457cad7c748c688a334cd817e5cfce163fac7a9a7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3627/magpie-cli-linux-amd64"
      sha256 "ce777c4f104ce4a2863d7a37d854deb0b5d51e899774f7e4a86fbd84c1c6189b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
