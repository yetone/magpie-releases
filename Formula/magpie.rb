class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2588/magpie-cli-darwin-arm64"
      sha256 "6810aea8938adc59fe2aac96a26ba972d5d656f828bd7f216a0dc2d7ace18469"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2588/magpie-cli-darwin-amd64"
      sha256 "2929d433d91d7a0f8006c546ac99c361f436ef3bca6beb56efc100afe9a0a774"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2588/magpie-cli-linux-arm64"
      sha256 "d152d8efd83eafdbd1bf7868f19a846bef2e6f38244719f91c9dd225055db593"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2588/magpie-cli-linux-amd64"
      sha256 "ac2b15ae750e35780319fc41aa2d43cb62a914ea3ad0103bbfb61d7f016fb8f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
