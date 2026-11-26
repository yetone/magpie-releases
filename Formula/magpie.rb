class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4824/magpie-cli-darwin-arm64"
      sha256 "7dcc3e336479180953f34ef0d698f1b69a0ce45571f2f3543eea3ce5894fe3f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4824/magpie-cli-darwin-amd64"
      sha256 "5f4c24247a9414de2de528eceb052059e4bb3ca32d7d234756f2347ce89856d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4824/magpie-cli-linux-arm64"
      sha256 "c9663b966dbd480dd6dd608c88f155925f14235b0e94bebd1a1759b782f247c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4824/magpie-cli-linux-amd64"
      sha256 "b2ae90d6b4a38409d9cd33590a3a148c67f0f500db4647f6e955b1f63a786abd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
