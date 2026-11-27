class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4984/magpie-cli-darwin-arm64"
      sha256 "a061466577e84d60d4e7a65d3ca19edae4f6da38442c83ea51e506cc5e3f0669"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4984/magpie-cli-darwin-amd64"
      sha256 "acea4bb844a5227fb4de2d165069d85fcad10cdc61a18138b7bab58ddff307dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4984/magpie-cli-linux-arm64"
      sha256 "b09fb1202b9c8b90d9e3808464c1262f9672f51dd488caa3a07743df7a9af32d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4984/magpie-cli-linux-amd64"
      sha256 "6273f70947564e2922f8900a5ecc87714d8523968486500bb6464b51dcde2458"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
