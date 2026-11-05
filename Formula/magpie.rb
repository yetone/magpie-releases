class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3009/magpie-cli-darwin-arm64"
      sha256 "6bbab97e028eb9ba821ceef648756363b9b01ba0a72fdd752104d3b249604f1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3009/magpie-cli-darwin-amd64"
      sha256 "01348494bea9767ea8374a1982d7981d3ed18c9af52cc3019fb7dc09f780149f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3009/magpie-cli-linux-arm64"
      sha256 "f762868edc11e6860e0c389354c490f05e9fbbc60b4cecae55dcb4f9b6ae9ae0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3009/magpie-cli-linux-amd64"
      sha256 "37a677be245432cc5b251d1a62bea3bd70d67cba4329c7c33e7b6ca93bff6ba2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
