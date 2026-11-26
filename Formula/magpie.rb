class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4891/magpie-cli-darwin-arm64"
      sha256 "41b506e7854e5bac6a5d72dd50d8dec805a0bcc7513b9ee182743521abfea872"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4891/magpie-cli-darwin-amd64"
      sha256 "8b8a560762e104a4f6bce41db32e0610506d6df067f502befe3a6e1af8bf7b13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4891/magpie-cli-linux-arm64"
      sha256 "a17f14d06899cfc4a558a9880236220bef3cc7997112e97ef17f1fec20258a5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4891/magpie-cli-linux-amd64"
      sha256 "75f4e8de0a33f3b9797e0ea4bf6980f039cb1513f546addb3d9a4b1b23641f8f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
