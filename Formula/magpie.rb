class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1067/magpie-cli-darwin-arm64"
      sha256 "cc6d14613b88ccb43bcd8310e5dca8c863cbeb12aacddf7053f92312958e7e2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1067/magpie-cli-darwin-amd64"
      sha256 "4d609140727859846e7cb4f548c8c32784f397e65227de3e636d5ad5f8aed96a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1067/magpie-cli-linux-arm64"
      sha256 "a572e8289b06f0a5bc78f1bcf4548a1145c17f6d2312f0db789791d63351152b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1067/magpie-cli-linux-amd64"
      sha256 "2f1f80e7d9b7314073a2ba06d88466483a6e2ab39b80f01af50d4b365cd3b4fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
