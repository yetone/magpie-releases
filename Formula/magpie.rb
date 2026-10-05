class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1009/magpie-cli-darwin-arm64"
      sha256 "c060434cc996c8ea5bca7ecfc679c072cbeb7cd87ece0984b8eee7fab005ba81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1009/magpie-cli-darwin-amd64"
      sha256 "2f0a103fc62a159b4bf4dcf7a01b86bf0f3bef137acde71493a69c1d2089b82b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1009/magpie-cli-linux-arm64"
      sha256 "5889e4b70b6ee0ba557e25c59671c548d5cd8d301b6eb8dbc10b1d587148dee3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1009/magpie-cli-linux-amd64"
      sha256 "ab54e5709451723a7a001fe106af0e4432bb3f9a21f58e75b06360152357bf0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
