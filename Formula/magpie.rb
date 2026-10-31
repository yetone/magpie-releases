class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2497/magpie-cli-darwin-arm64"
      sha256 "5758a0e677fe3a568cbcacabe1f0231b24fde5fc9a6ba8b169d7a96bceee8243"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2497/magpie-cli-darwin-amd64"
      sha256 "771ad8671d6f798aba552ccfacf43351ad6ca7b56f6196d34dd6907f1baf2b8c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2497/magpie-cli-linux-arm64"
      sha256 "09fab12d34610e4ab4a31008f73ae87c57aca11461c8af1116456256d9455116"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2497/magpie-cli-linux-amd64"
      sha256 "974f60e8924d3e2c2b0d495cd310269c4e7ea08f8f21d766a730f47294be5c36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
