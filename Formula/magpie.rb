class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2115/magpie-cli-darwin-arm64"
      sha256 "82c4063594032d461c773f169fedbb37dc4ad24bd1c16bb11b5212b01fbec84b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2115/magpie-cli-darwin-amd64"
      sha256 "cc55f5a1f604cd0f6e6e595ea44b042b3319ea622c5828d971e304f33e108123"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2115/magpie-cli-linux-arm64"
      sha256 "a4d18d91de2237c4a27aa40f1e2c24d0701d363afa1eae76f6296b201b14078f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2115/magpie-cli-linux-amd64"
      sha256 "2bdbcc7efb06357cb0bea8c31c5bdb3ffadf45a51ea2ad5c0b8380dbe2423a9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
