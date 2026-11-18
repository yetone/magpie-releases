class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4415/magpie-cli-darwin-arm64"
      sha256 "3cab311d55411a399f0d62d7668dbda3f81e8ffca8200057ddc01d3f38a521ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4415/magpie-cli-darwin-amd64"
      sha256 "d2f4494c237796828321a22a7d6e6b2c6e7d89317482d9d23b14d63221eb6aac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4415/magpie-cli-linux-arm64"
      sha256 "98139c121a38a32b0a2435c443c520cbeae3a8ed199f98c0529b67baa5d0b49c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4415/magpie-cli-linux-amd64"
      sha256 "a17e465118cecd771ab6d5bcfebc11741b5d4f0c9bb13eeb49dba772bb376a38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
