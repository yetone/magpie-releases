class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3325/magpie-cli-darwin-arm64"
      sha256 "1576fb4d023815d9551d988151f6ab99da0936de6db749e1c9a0c615703fb9a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3325/magpie-cli-darwin-amd64"
      sha256 "2e0eac7631133e3cb046edd4ef7cb7ba0c65bad333e5ec8449849803acdfce52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3325/magpie-cli-linux-arm64"
      sha256 "3a3762e4c5b209b092416a39921ad00c29ad6ebfc2403bbb33cf26b6718fd8be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3325/magpie-cli-linux-amd64"
      sha256 "c6fc414883b00ec5e3b4bcf3666ac9e497c53acec9fa0b1c89a525a66663b7f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
