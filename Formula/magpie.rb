class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3234/magpie-cli-darwin-arm64"
      sha256 "91d1ba68cb4aebf3ec8640c53f4c1155f7f87f51fe74eece36db4431800487cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3234/magpie-cli-darwin-amd64"
      sha256 "226f7f7d1971032d132037ed1ce4ec370a7f9d68a2da455501c313de86be940b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3234/magpie-cli-linux-arm64"
      sha256 "dfea28ce12b2d52b22356164f0f9c2144ad63a0f766272defe821df5f125fd57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3234/magpie-cli-linux-amd64"
      sha256 "95c33065a44874eb57acee7b4e295e3208bb25d92962bca16684feeb7a58aa50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
