class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1904/magpie-cli-darwin-arm64"
      sha256 "1e6ce9292de1c3fe149bc6b5fb7a5b46fdb407267e6c70099b0dbb3483575121"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1904/magpie-cli-darwin-amd64"
      sha256 "d9df01e7e48d5406bb380abe6307400bd3aaf07d43cbeced9d58642854ec3ab9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1904/magpie-cli-linux-arm64"
      sha256 "379ecd3da54e676b9b6bf2267d7ba0553a638f644ba95a7594d688e535a1837f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1904/magpie-cli-linux-amd64"
      sha256 "d07f66c9a8c20c619eb5cf2e62afe1814d8bc9c22babbb9691811360266d6ed2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
