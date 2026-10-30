class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2156/magpie-cli-darwin-arm64"
      sha256 "47423c6da59b030fc4e9d843bf63383e9b8eefc61593821d7687c782b74f20be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2156/magpie-cli-darwin-amd64"
      sha256 "0e3bdee7eb2b43aed4f4eb72b2b87edfb60ca740d34395e64053c345c91c2c98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2156/magpie-cli-linux-arm64"
      sha256 "2ef15c8f2b0833736de2418015de04eb9d5d655d95fde87fe85a663b1035eeeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2156/magpie-cli-linux-amd64"
      sha256 "d57f50b718c7b19fe6a4c4cf8994d734b53bc7c5b0c7c3e9e34b3451c44fb295"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
