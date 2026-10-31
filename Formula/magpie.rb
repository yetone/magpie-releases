class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2475/magpie-cli-darwin-arm64"
      sha256 "b1483d1dba317d3b0c3889d062d3f7f5e46630ab5ed93c225f9b597ddda7e06f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2475/magpie-cli-darwin-amd64"
      sha256 "3ad8eb134a5eccc1eae663a935cd0cfc6f4688d1005ae106ade99df6de6045ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2475/magpie-cli-linux-arm64"
      sha256 "0e3ddec6130c479b439d401d586239b6066c3873d05eb955019e804afb6dcdfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2475/magpie-cli-linux-amd64"
      sha256 "d2b5e248c70520729a05be8751da21b277c1b6bf1bcb101fe8db30a40bc7305c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
