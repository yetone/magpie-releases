class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4052/magpie-cli-darwin-arm64"
      sha256 "d136e2116c997f7ba7c59e3a80352c15ab5c4fb48344e3fde0e63af44bd53aaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4052/magpie-cli-darwin-amd64"
      sha256 "97854dd47ae91bac723b8142e9b704e7e5d6a476f51555b636911d53c5391ece"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4052/magpie-cli-linux-arm64"
      sha256 "820472d82bb015cc52da0b49416450f08a5978500bdc6102d9746f84d1fbd0fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4052/magpie-cli-linux-amd64"
      sha256 "bf6c2e9c598b8d8862cc0b53839f243d6e6d3a50acf437179159e5d13f48fa42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
