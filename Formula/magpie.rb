class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3474/magpie-cli-darwin-arm64"
      sha256 "f6ad3191d1621567cb5094de46be10215de58f36ed5a688a7359f88c0fe68ada"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3474/magpie-cli-darwin-amd64"
      sha256 "e37fcb1bc3e46cee99b822d46b6e13e7c3dc7e8bff9e9f36d0a8d56c049dc5a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3474/magpie-cli-linux-arm64"
      sha256 "9f558a60bd585240310822396a023c94b18f9f44a7452c257c9bddcc5363b805"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3474/magpie-cli-linux-amd64"
      sha256 "8301c0a70fa8dbba7d51cae13b30253156fcb9483ed5c9c849aeb47b59caa5fb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
