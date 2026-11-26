class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4904/magpie-cli-darwin-arm64"
      sha256 "450298780c909da30aa19b0935ba7f3e1bc4e5682e951a9d4b3837c8efefaad5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4904/magpie-cli-darwin-amd64"
      sha256 "d52ff1ab39e5d58332940e878b2029760e4aba2ee1a147f96d898cd702750ec5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4904/magpie-cli-linux-arm64"
      sha256 "7de57628855d635492c751124f3c0d6d7441570527ddb4d162b208f2ac1c2a4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4904/magpie-cli-linux-amd64"
      sha256 "2306909b13f6f797876e4fec616b69308b1e9c215bd095444803589d423512f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
