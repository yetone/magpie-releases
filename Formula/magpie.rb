class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4809/magpie-cli-darwin-arm64"
      sha256 "d12077b18f7a0bdf521d7c2ded3566fd557c90071c1d6e9c38cb8be0ebd96bff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4809/magpie-cli-darwin-amd64"
      sha256 "cd92587e1690facf6f0c33acc67e076449e2aa0c1dfd5e413a56746bd42118c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4809/magpie-cli-linux-arm64"
      sha256 "9d82110e08edb3bdb5bb57ed9967e62d6a97587d411930c262fedcc67d03eb91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4809/magpie-cli-linux-amd64"
      sha256 "15d50309b880731b90637da4be22bd3d6a4c89e809d5dc6f106a351b88dc80fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
