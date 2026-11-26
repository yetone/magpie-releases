class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4894/magpie-cli-darwin-arm64"
      sha256 "3ff6c6d03cd6e23fe195f08e54d2df99a6bb65e49d87d37ac8e333e56c8cc698"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4894/magpie-cli-darwin-amd64"
      sha256 "5bb1dab8f6f6df05a988cab4866afc23b801e6a2133eeabcd8c35c97f29aed5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4894/magpie-cli-linux-arm64"
      sha256 "adeef9a671749ad0453baf2b1b3a5552ff7dbc0fe3f7c9913a91b2438ab188c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4894/magpie-cli-linux-amd64"
      sha256 "96e71d2bc1533ad8ab77a589d00b1b6a040174b328af7b85c8ba4909747bb6bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
