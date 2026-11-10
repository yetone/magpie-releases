class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3605/magpie-cli-darwin-arm64"
      sha256 "413aefef3dc2b4777f6f10c6e0f26a5483a03c56e0d5e8da6280cb2c03e53f29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3605/magpie-cli-darwin-amd64"
      sha256 "c524c7b686640278d07f7b15e527ffbd02e9e1eb116804b6232131cc4eef11aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3605/magpie-cli-linux-arm64"
      sha256 "703a1650e333fdcb4c5c9dceaf6eaa02a9301f9ef47448c847b45b07ec266668"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3605/magpie-cli-linux-amd64"
      sha256 "f6377234f9ea62aa614c4a7746085353123ce5b95d596b0a5b98854c3845a2ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
