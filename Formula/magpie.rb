class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2333/magpie-cli-darwin-arm64"
      sha256 "e6c0b0dbad5bd0d69fe944aa9f60c85db8c7813fc5a01d9645396f0bfaeda847"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2333/magpie-cli-darwin-amd64"
      sha256 "37fddfd26c783b3cbe859fa2617509ac44cf61ad4a4208a00515ba9b30d039ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2333/magpie-cli-linux-arm64"
      sha256 "d1452bfb97868480008246e37dbe215a4d7487e2869ef515459278f02e01d8c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2333/magpie-cli-linux-amd64"
      sha256 "48438fb3646e9e10a91db1df7b5974dbdd061d5a85bd889f77dd059c74487bfd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
