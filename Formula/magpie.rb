class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3669/magpie-cli-darwin-arm64"
      sha256 "b91d25b18748bf27cb6536d8282cf377af9558cd4f2b299d52487c487d649517"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3669/magpie-cli-darwin-amd64"
      sha256 "9e8d15ebe6fbf43d6544aa752006fb4248b9425ea3c540930669816033f80b5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3669/magpie-cli-linux-arm64"
      sha256 "3fed17996a10fbfd88e441df700b0cf149cf2e6d2058c038d625d87b34044f3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3669/magpie-cli-linux-amd64"
      sha256 "7b68f736d2fef60157defcdf91531558161222c4dfe9ff994c4c35b4c33d9f58"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
