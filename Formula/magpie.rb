class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2602/magpie-cli-darwin-arm64"
      sha256 "8e466d684560e3a08493990fadb11757fa4d759f0f4b091030536bbac9201aab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2602/magpie-cli-darwin-amd64"
      sha256 "ff958f372b1332c2676bd97e86ea40225288c91501f777a6e42ec03441914ead"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2602/magpie-cli-linux-arm64"
      sha256 "2b05dd32bb0bf66cb39212aaef70615e408c0d04fc9f516c2a7965cce4472ab3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2602/magpie-cli-linux-amd64"
      sha256 "6e7caa9e83c41d736be83f435b1b684eda1869ffd57042a595b9d6eb6b78222e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
