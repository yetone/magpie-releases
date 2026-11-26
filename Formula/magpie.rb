class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4842/magpie-cli-darwin-arm64"
      sha256 "709190a2d7bbd3a55e06f2d4751a3fa0537a15c7c275d8d5a442df43473d1456"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4842/magpie-cli-darwin-amd64"
      sha256 "4f18b52b31a90564a1618495f6c96bab4bfd64cdaf9fdd9f415a532266a98744"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4842/magpie-cli-linux-arm64"
      sha256 "dda2050a4f280b693764805f5cab678a9bba363bf384cb78832a614cb2da97de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4842/magpie-cli-linux-amd64"
      sha256 "b1155d8167bea666737f18d53e4205fc4db70ee77837f5dbc32d569b7bcf2d1d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
