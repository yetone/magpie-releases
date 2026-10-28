class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1925/magpie-cli-darwin-arm64"
      sha256 "6ce67e2a94b47668ae96a8057152661f22d7f795c66770712c6f84a8199fdfc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1925/magpie-cli-darwin-amd64"
      sha256 "21b2059154981c2310f34c2bf477933d72fdc5e48b015a85541cc305ec01ef78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1925/magpie-cli-linux-arm64"
      sha256 "d7578460f8cbf13e73dc26a55a71efdfc75a3225e4f05946a14c6ae96266de2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1925/magpie-cli-linux-amd64"
      sha256 "29082e6cde0ba9e65949691c56546c2dd0a9f291766e76f396b686511cfe287d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
