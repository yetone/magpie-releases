class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1085/magpie-cli-darwin-arm64"
      sha256 "0e96f6f1fa75043a367319686d4e22ca7d82e83d06abd492dbeb31363e5023f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1085/magpie-cli-darwin-amd64"
      sha256 "00e1e04f822a9769031e046f19d243ebb4a8ccda0b45719676435aa66b5425ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1085/magpie-cli-linux-arm64"
      sha256 "5528697f8a5d453a24071bb50fddf356e6e4a275d4279b34965778bc88b07a8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1085/magpie-cli-linux-amd64"
      sha256 "dabffb7d6a9d4eda686f89c73884f00adfad0c2fbe6883b88d36995dba0504c3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
