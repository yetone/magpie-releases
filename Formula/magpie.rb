class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3131/magpie-cli-darwin-arm64"
      sha256 "8e40320e11df887f4339cbac1745acb2b19c2ca3e862776da3233c3a80b5b52b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3131/magpie-cli-darwin-amd64"
      sha256 "32b20ebb650c5c38f126c97c7eb14961582a055a458411d47aad2ee560dce284"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3131/magpie-cli-linux-arm64"
      sha256 "7247581c0753471bd00dc5c92f5a1331be12d0090d5dbd4cda73dc9a8cd28f98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3131/magpie-cli-linux-amd64"
      sha256 "1aa633fabce24b5eeffcda1a13dd3bd248cd5aff6f5d9b9f27d1c5cf620065d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
