class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1912/magpie-cli-darwin-arm64"
      sha256 "24c7fbc106b1452fe5fa6d8c427270084f3e00fcd1da9db5bd7fb708cdb8967e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1912/magpie-cli-darwin-amd64"
      sha256 "4f07bff9207ea6930df18fd73e5f2a043b65bbd3bcaf9e17cea7c75d87add85b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1912/magpie-cli-linux-arm64"
      sha256 "8fc22cecb17cee8951163218d361a5acc0af0fd37b8eda646f8e70c25670aaa2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1912/magpie-cli-linux-amd64"
      sha256 "6ab5f9810c12c660925d588ed5b6780bd67a24be5dd8d33a72df1fb4129def8f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
