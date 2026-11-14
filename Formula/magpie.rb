class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4152/magpie-cli-darwin-arm64"
      sha256 "1eed7f64d62374f78f6183cb2524b937242a1032b7843e38972ba7a359fec755"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4152/magpie-cli-darwin-amd64"
      sha256 "7d24f66f74ba22f4671449b18f9713b4af0da92ae3e68402007f185be73d690c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4152/magpie-cli-linux-arm64"
      sha256 "60276c79d2884a9d4ad00942fdc6502140e4d077701507be2dbbfb9ff9747242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4152/magpie-cli-linux-amd64"
      sha256 "f7582df6d548dc4ac9d58598fd601249a72fa3b69e74b4ae9832108dfc7e923b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
