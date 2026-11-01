class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2657/magpie-cli-darwin-arm64"
      sha256 "cc3a4a145541a292d0df34d10c2f0d8f0a8e7ecf716d510c3a77f54c4fb5bce0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2657/magpie-cli-darwin-amd64"
      sha256 "02d80cbf5b86a167e3722bdfb5411c18cf99415be3002c69c73566a9a48742a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2657/magpie-cli-linux-arm64"
      sha256 "b8b5c99396365aeb0a6939747a15098ea8279c6416ef7fdba65cd0edbd641a09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2657/magpie-cli-linux-amd64"
      sha256 "0814eb3489a18e252db4becb3de54aaf5926c95e1e9554533c35f3cc3162488e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
