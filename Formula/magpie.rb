class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4318/magpie-cli-darwin-arm64"
      sha256 "9f5d91d1c5fdb279d499a7fbb60e67b1d669fb14b8573c6dd8982393720a35c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4318/magpie-cli-darwin-amd64"
      sha256 "b5578d97d83e8bb91baad4e22286ac94b0a9922de068af7c2c5ad6e99f09a627"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4318/magpie-cli-linux-arm64"
      sha256 "4fc2daae568ea1d899bc0601fb7f415a0ce6993afaed90cceb9523d1c28f69a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4318/magpie-cli-linux-amd64"
      sha256 "d7f065a1f09c6218b18113c44fd589f81f1b9b67d2b346cb3421f0e3ef87488c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
