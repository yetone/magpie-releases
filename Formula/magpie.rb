class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2623/magpie-cli-darwin-arm64"
      sha256 "d717af2dec63cded485a13c923c6e5395fe8a8dfc423782444946dde02c8b2d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2623/magpie-cli-darwin-amd64"
      sha256 "b5badb6699c43fc23fa884a32b6421153fc9c0983f1569ca4e53b0ae39a9833e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2623/magpie-cli-linux-arm64"
      sha256 "2bbb9ac3cf7cf2f389c7ac451eb8751193c84f91521fa67bfcd734bdc479b24c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2623/magpie-cli-linux-amd64"
      sha256 "0119d5de1df6e7f430ce92473ee649090e67c41c5a00974a031a3a3f53996faf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
